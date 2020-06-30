#include <NewPing.h>
#include <Wire.h>

#define SONAR_NUM 3      // Number of sensors.
#define MAX_DISTANCE 100 // Maximum distance (in cm) to ping.

#define I2CADDR 0x08

//define 7seg pins
#define DATA_PIN 12
#define LATCH_PIN 10
#define CLOCK_PIN 11

const int LEFT = A2;
const int RIGHT = A3;

NewPing sonar[SONAR_NUM] = {   // Sensor object array.
  NewPing(7, 8, MAX_DISTANCE), // Each sensor's trigger pin, echo pin, and max distance to ping.
  NewPing(4, 5, MAX_DISTANCE),
  NewPing(0, 2, MAX_DISTANCE)
};

void setup() {
  Wire.begin(); // join i2c bus (address optional for master)
  pinMode(LED_BUILTIN, OUTPUT);

  // initialize I/O pins
  pinMode(DATA_PIN, OUTPUT);
  pinMode(LATCH_PIN, OUTPUT);
  pinMode(CLOCK_PIN, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int dist = sonar[2].ping_cm();
  int newDist;
  displayNum(dist);
  delay(700);
  i2cCommand(128, 'B');
  int starttime = millis();
  while (millis() - starttime < 1000) {
    newDist = sonar[2].ping_cm();
    displayNum(newDist);
  }
  i2cCommand(0, 'l');
  i2cCommand(0, 'r');
  int traveled = newDist - dist;
  //displayNum(traveled);
  flash(100,2);
  delay (1000);

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
