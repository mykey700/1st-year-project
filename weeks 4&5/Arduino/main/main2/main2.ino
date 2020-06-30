#include <Wire.h>
#include <Servo.h>
#include <NewPing.h>

#define SONAR_NUM 3      // Number of sensors.
#define MAX_DISTANCE 100 // Maximum distance (in cm) to ping.

#define I2CADDR 0x08

//define 7seg pins
#define DATA_PIN 12
#define LATCH_PIN 10
#define CLOCK_PIN 11


const int LEFT = A2;
const int RIGHT = A3;

int leftVal = 100;
int rightVal = 100;

Servo myservo[3];  // create servo object to control a servo
// twelve servo objects can be created on most boards

NewPing sonar[SONAR_NUM] = {   // Sensor object array.
  NewPing(7, 8, MAX_DISTANCE), // Each sensor's trigger pin, echo pin, and max distance to ping.
  NewPing(4, 5, MAX_DISTANCE),
  NewPing(13, 2, MAX_DISTANCE)
};

int Mspeed = 140;

void setup() {
  // put your setup code here, to run once:
  Wire.begin(); // join i2c bus (address optional for master)

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

  Serial.begin(9600);
}

int index = 0;
void loop() {
  // put your main code here, to run repeatedly:
  servoPos(0);

  parkpt1();
//  leftVal = analogRead(LEFT);
//  rightVal = analogRead(RIGHT);
//  if (leftVal < 5 || rightVal < 5) {
//    parkpt1();
//    if (index >= 2) {
//      index = 0;
//    } else {
//      index++;
//    }
//    switch (index) {
//      case 0:
//        displayNum(01);
//        parkpt1();
//        break;
//      case 1:
//        displayNum(02);
//        parkpt2();
//        break;
//      case 2:
//        displayNum(03);
//        parkpt3();
//        break;
//    }
//  }
//  delay(100);
}

int parkpt1() {
  int changeTol = 5;
  int wallTol = 3;
  //set servo
  servoPos(1);
  //backward
  i2cCommand('B', Mspeed);
  Serial.println("going backwards");
  //check for space
  
  int startDist = sonar[1].ping_cm();
  delay(50);
  int dist = sonar[1].ping_cm();
  int change = dist - startDist;
  while (change < changeTol) {
    flash(50, 2);
    dist = sonar[1].ping_cm();
    change = dist - startDist;
    displayNum(dist);
    delay(50);
  }

  //forward a bit
  //  i2cCommand('F', Mspeed);
  //  delay(200);
   i2cCommand('F', 0);
}

int parkpt2() {
  int changeTol = 5;
  int wallTol = 3;
  //set servo
  servoPos(2);

  //45 angle (right backwards)
  i2cCommand('r', Mspeed);
  delay(500);
  i2cCommand('r', 0);

  //backward till a sensor hits wall

  int Ldist = sonar[1].ping_cm();
  delay(50);
  int Rdist = sonar[0].ping_cm();

  i2cCommand('B', Mspeed);

  while (Ldist > wallTol && Rdist > wallTol) {
    flash(50, 2);
    Ldist = sonar[1].ping_cm();
    delay(50);
    Rdist = sonar[0].ping_cm();
    displayNum(Ldist);
    delay(50);
  }

  i2cCommand('F', 0);
}


int parkpt3() {
  int changeTol = 5;
  int wallTol = 3;
  //45 angle (right forwards)
  i2cCommand('r', -Mspeed);
  delay(500);
  i2cCommand('r', 0);

  //set servo
  servoPos(3);

  //backwards till sensor even
  int Ldist = sonar[1].ping_cm();
  delay(50);
  int Rdist = sonar[0].ping_cm();
  delay(50);
  int Frontdist = sonar[2].ping_cm();
  delay(50);
  int Backdist = (Rdist + Ldist) / 2;


  while ((Backdist - Frontdist) > changeTol) {
    flash(50, 2);
    i2cCommand('B', Mspeed);
    Ldist = sonar[1].ping_cm();
    delay(50);
    Rdist = sonar[0].ping_cm();
    delay(50);
    Frontdist = sonar[2].ping_cm();
    delay(50);
    Backdist = (Rdist + Ldist) / 2;
  }
  i2cCommand('F', 0);
  //forwards till sensors even
  while ((Frontdist - Backdist) > changeTol) {
    flash(50, 2);
    i2cCommand('F', Mspeed);
    Ldist = sonar[1].ping_cm();
    delay(50);
    Rdist = sonar[0].ping_cm();
    delay(50);
    Frontdist = sonar[2].ping_cm();
    delay(50);
    int Backdist = (Rdist + Ldist) / 2;
  }
  i2cCommand('F', 0);

  return 10;
}


void i2cCommand( char command, int Mspeed) {
  int numa = (Mspeed << 8 ) & 0xff;
  int numb = Mspeed & 0xff;
  Wire.beginTransmission(I2CADDR); // transmit to device #8
  Wire.write(command);
  Wire.write(numa);
  Wire.write(numb);
  Wire.endTransmission();    // stop transmitting
}

void servoPos(int point) {
  switch (point) {
    case 0:
      displayNum(00);
      delay(300);
      myservo[0].write(0); //right
      delay(300);
      myservo[1].write(0); // left
      delay(300);
      myservo[2].write(0); // frount
      break;
    case 1:
      displayNum(11);
      delay(300);
      myservo[0].write(90); //right
      delay(300);
      myservo[1].write(0); // left
      delay(300);
      myservo[2].write(0); // frount
      break;
    case 2:
      displayNum(22);
      delay(300);
      myservo[0].write(45); //right
      delay(300);
      myservo[1].write(45); // left
      delay(300);
      myservo[2].write(0); // frount
      break;
    case 3:
      displayNum(33);
      delay(300);
      myservo[0].write(0); //right
      delay(300);
      myservo[1].write(90); // left
      delay(300);
      myservo[2].write(0); // frount
      break;
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

void flash(int frq, int period) {
  for (int i = 0; i < period; i++) {
    digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(frq);                       // wait for a second
    digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
    delay(frq);
  }
}
