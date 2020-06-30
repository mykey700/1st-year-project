#include <Wire.h>
#include <Servo.h>
#include <NewPing.h>
#include "Statistic.h"

#define SONAR_NUM 3      // Number of sensors.
#define MAX_DISTANCE 100 // Maximum distance (in cm) to ping.

#define I2CADDR 0x08

//define 7seg pins
#define DATA_PIN 12
#define LATCH_PIN 10
#define CLOCK_PIN 11


const int LEFT = A2;
const int RIGHT = A3;
int index = 0;

Servo myservo[3];  // create servo object to control a servo
// twelve servo objects can be created on most boards

NewPing sonar[SONAR_NUM] = {   // Sensor object array.
  NewPing(7, 8, MAX_DISTANCE), // Each sensor's trigger pin, echo pin, and max distance to ping.
  NewPing(4, 5, MAX_DISTANCE),
  NewPing(0, 2, MAX_DISTANCE)
};

char SPACESIDE = 'a';
int SPACELENGHT;
void setup() {
    // put your setup code here, to run once:
    Wire.begin(); // join i2c bus (address optional for master)
    pinMode(LED_BUILTIN, OUTPUT);
  
    // initialize I/O pins
    pinMode(DATA_PIN, OUTPUT);
    pinMode(LATCH_PIN, OUTPUT);
    pinMode(CLOCK_PIN, OUTPUT);
  
    myservo[0].attach(3);  // attaches the servo on pin 9 to the servo object
    myservo[1].attach(6);
    myservo[2].attach(9);
  
    delay(300);
    myservo[0].write(0); //right
    delay(300);
    myservo[1].write(0); // left
    delay(300);
    myservo[2].write(0); // frount
    delay(3000);
}

void loop() {
  // put your main code here, to run repeatedly:
  measureSpace();

  displayNum((int)SPACESIDE - 90);
  delay(1000);
  //reverceP();
  //delay(1000);
  flash(100, 2);
}

void reverceP() {
  int limit = 3;
  //servoL to 90
  myservo[1].write(45);
  //servoR to 90
  myservo[0].write(45);

  if (SPACESIDE == 'l') {
    i2cCommand(128, 'r');
    delay(500);
    i2cCommand(0, 'r');
  }


  int distA = sonar[1].ping_cm();
  int distB = sonar[0].ping_cm();

  i2cCommand(128, 'F');

  while (distA > 3 || distB > 3) {
    int distA = sonar[1].ping_cm();
    int distB = sonar[0].ping_cm();
    delay(100);
  }

  i2cCommand(0, 'l');
  i2cCommand(0, 'r');

  if (SPACESIDE == 'l') {
    i2cCommand(128, 'l');
    delay(500);
    i2cCommand(0, 'l');
  }

}

void measureSpace() {
  int speedd = 100;
  //servoL to 90
  myservo[1].write(0);
  //servoR to 90
  myservo[0].write(90);

  int distA = sonar[1].ping_cm();
  int distB = sonar[0].ping_cm();
  displayNum(distA);
  delay(500);
  int tol = 4;
  //move forward
  //if sonic is diffrent start measuring distance
  bool stopped = false;
  int newDistA;
  int diffA;
  int newDistB;
  int diffB;
  i2cCommand(speedd, 'F');
  while (!stopped) {
    newDistA = sonar[1].ping_cm();
    newDistB = sonar[0].ping_cm();
    diffA = newDistA - distA ;
    diffB = newDistB - distB ;
    if (diffA > tol) {
      SPACESIDE = 'l';
      stopped = true;

    }

    if (diffB > tol) {
      SPACESIDE = 'r';
      stopped = true;

    }
    displayNum(newDistA);
    delay(100);


  }
  i2cCommand(0, 'l');
  i2cCommand(0, 'r');
  delay (1000);

  //forward
  i2cCommand(speedd, 'F');
  //start timer
  int starttime = millis();
  int endtime = starttime;
  // if diff is large
  stopped = false;
  newDistA = 0;
  diffA = 0;
  newDistB = 0;
  diffB = 0;
  distA = sonar[1].ping_cm();
  distB = sonar[0].ping_cm();
  i2cCommand(speedd, 'F');
  while (!stopped) {
    newDistA = sonar[1].ping_cm();
    newDistB = sonar[0].ping_cm();
    diffA = distA - newDistA;
    diffB = distB - newDistB;
    if (diffA > tol) {
      stopped = true;
      // end timer
      flash(100, 1);
      endtime = millis();
    }

    if (diffB > tol) {
      flash(100, 2);
      stopped = true;
      // end timer
      endtime = millis();
    }
    displayNum(newDistA);
    delay(100);
  }
  i2cCommand(0, 'l');
  i2cCommand(0, 'r');
  // stop

  int timer = endtime - starttime;
  float Motorspeed = 0.045;
  SPACELENGHT = Motorspeed * timer;
}

void i2cCommand(int Mspeed, char command) {
  int numa = (Mspeed << 8 ) & 0xff;
  int numb = Mspeed & 0xff;
  Serial.println(numa);
  Serial.println(numb);
  Wire.beginTransmission(I2CADDR); // transmit to device #8
  Wire.write(command);
  Wire.write(numa);
  Wire.write(numb);
  Wire.endTransmission();    // stop transmitting
}

void flash(int frq, int period) {
  for (int i = 0; i < period; i++) {
    digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(frq);                       // wait for a second
    digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
    delay(frq);
  }
}

//for 7seg display
byte digitA[] = {
  /*0*/ B10000001, /*1*/ B11001111, /*2*/ B10010010, /*3*/ B10001010, /*4*/ B11001100,
  /*5*/ B10101000, /*6*/ B10100000, /*7*/ B10001111, /*8*/ B10000000, /*9*/ B10001000,
};
byte digitB[] = {
  /*0*/ B00100100, /*1*/ B11110110, /*2*/ B01001100, /*3*/ B11000100, /*4*/ B10010110,
  /*5*/ B10000101, /*6*/ B00000101, /*7*/ B11110100, /*8*/ B00000100, /*9*/ B10000100
};

void displayNum(int num) {
  int A = (num / 10) % 10;
  int B = num % 10;

  if (A >= 9 || A < 0 || B >= 9 || B < 0 ) {
    flash(50, 4);
    A = 0;
    B = 0;
  }

  //ground latchPin and hold low for as long as you are transmitting
  digitalWrite(LATCH_PIN, LOW);
  digitalWrite(CLOCK_PIN, LOW);
  shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, digitB[B]);
  shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, digitA[A]);
  //return the latch pin high to signal chip that it
  //no longer needs to listen for information
  digitalWrite(LATCH_PIN, HIGH);
}
