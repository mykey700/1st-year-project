#include <Servo.h>

//define 7seg pins
#define DATA_PIN 12
#define LATCH_PIN 10
#define CLOCK_PIN 11

Servo myservo[3];  // create servo object to control a servo
// twelve servo objects can be created on most boards

const int LEFT = A2;
const int RIGHT = A3;
int index = 0;

int leftVal = 100;
int rightVal = 100;

void setup() {
  // put your setup code here, to run once:
  myservo[0].attach(3);  // attaches the servo on pin 9 to the servo object
  myservo[1].attach(6);
  myservo[2].attach(9);

  pinMode(LED_BUILTIN, OUTPUT);

  // initialize I/O pins
  pinMode(DATA_PIN, OUTPUT);
  pinMode(LATCH_PIN, OUTPUT);
  pinMode(CLOCK_PIN, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  leftVal = analogRead(LEFT);
  rightVal = analogRead(RIGHT);
  if (leftVal < 5) {
    if (index >= 3) {
      index = 0;
    } else {
      index++;
    }
  } else if (rightVal < 5) {
    if (index <= 0) {
      index = 3;
    } else {
      index--;
    }
  }
  
  pos(index);
}

void pos(int point) {
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
