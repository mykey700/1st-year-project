#include <NewPing.h>
#include <Servo.h>

// define button pins
#define LEFT A2
#define RIGHT A3
int leftVal = 100;
int rightVal = 100;

//define 7seg pins
#define DATA_PIN 12
#define LATCH_PIN 10
#define CLOCK_PIN 11

//define servos
Servo servos[3];
int pos = 0;    // variable to store the servo position

//define ultrasonics
#define SONAR_NUM 3      // Number of sensors.
#define MAX_DISTANCE 100 // Maximum distance (in cm) to ping.

NewPing sonar[SONAR_NUM] = {   // Sensor object array.
  NewPing(0, 2, MAX_DISTANCE), // Each sensor's trigger pin, echo pin, and max distance to ping.
  NewPing(4, 5, MAX_DISTANCE),
  NewPing(7, 8, MAX_DISTANCE)
};

void setup() {
  //attach servos
  servos[0].attach(3);
  servos[1].attach(6);
  servos[2].attach(9);

  // initialize I/O pins
  pinMode(DATA_PIN, OUTPUT);
  pinMode(LATCH_PIN, OUTPUT);
  pinMode(CLOCK_PIN, OUTPUT);

  pinMode(LED_BUILTIN, OUTPUT);
}
int sensorIndex = 0;
void loop() {
  leftVal = analogRead(LEFT);
  rightVal = analogRead(RIGHT);

  if (leftVal < 5) {
    servoMove(10, 1);
    //getdistance(1);
  } else if (rightVal < 5) {
    servoMove(10, 1);
    //getdistance(2);
  }

  blinker(200,2);
}

void getdistance(int i) {
  int data = 0;
  data = sonar[i].ping_cm();
  displayNum(data);
}

void servoMove(int amount, int i) {
  int tot = amount + pos;
  if (tot >= 180) {
    servos[i].write(179);
    blinker(50,4);
    tot = pos - amount;
  }
  if (tot <= 0) {
    servos[i].write(1);
    blinker(50,4);
    tot = amount + pos;
  }
  servos[i].write(tot);
  pos = tot;
}
void servoSweep(int i) {
  for (pos = 0; pos <= 180; pos += 5) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    servos[i].write(pos);              // tell servo to go to position in variable 'pos'
    delay(30);
    getdistance(i);
  }
  for (pos = 180; pos >= 0; pos -= 5) { // goes from 180 degrees to 0 degrees
    servos[i].write(pos);              // tell servo to go to position in variable 'pos'
    delay(30);
    getdistance(i);
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

  //ground latchPin and hold low for as long as you are transmitting
  digitalWrite(LATCH_PIN, LOW);
  digitalWrite(CLOCK_PIN, LOW);
  shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, digitB[B]);
  shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, digitA[A]);
  //return the latch pin high to signal chip that it
  //no longer needs to listen for information
  digitalWrite(LATCH_PIN, HIGH);
}

byte tingA[] = {
  /*null*/ B11111111,/*left*/B11111111,/*right*/B11111111,/*front*/B11111111,
  /*topdot*/B11111111,/*lowdot*/B11111111
};
byte tingB[] = {
  /*null*/ B11111111,/*left*/B11111111,/*right*/B11111111,/*front*/B11111111,
  /*topdot*/B11111111,/*lowdot*/B11111111
};

void displayTing(int ting) {
  //ground latchPin and hold low for as long as you are transmitting
  digitalWrite(LATCH_PIN, LOW);
  digitalWrite(CLOCK_PIN, LOW);
  shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, tingB[ting]);
  shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, tingA[ting]);
  //return the latch pin high to signal chip that it
  //no longer needs to listen for information
  digitalWrite(LATCH_PIN, HIGH);
}

void blinker(int timer, int count) {
  for (int i = 0; i < count; i++) {
    digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(timer);                       // wait for a second
    digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
    delay(timer);
  }
}
