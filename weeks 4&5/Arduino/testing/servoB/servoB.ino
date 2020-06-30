#include <Servo.h>

const int LEFT = A2; 
const int RIGHT = A3;
int index = 0;

Servo myservo[3];  // create servo object to control a servo
// twelve servo objects can be created on most boards

int pos = 0;    // variable to store the servo position

int leftVal = 100;    
int rightVal = 100; 

void setup() {
  myservo[0].attach(3);  // attaches the servo on pin 9 to the servo object
  myservo[1].attach(6);
  myservo[2].attach(9);
  //Serial.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  leftVal = analogRead(LEFT);
  rightVal = analogRead(RIGHT);
    if (leftVal < 5) {
      if (index >= 2) {
        index = 0;
      } else {
        index++;
      }
  } else if (rightVal < 5) {
    if (index <= 0) {
      index = 2;
    } else {
      index--;
    }
  }
  sweep(index);
  flash(100,index+1);
  delay(1000);
}

void sweep(int i) {
  for (pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo[i].write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
  for (pos = 180; pos >= 0; pos -= 1) { // goes from 180 degrees to 0 degrees
    myservo[i].write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
}

void flash(int frq, int period) {
  for (int i = 0; i < period; i++) {
    digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(frq);                       // wait for a second
    digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
    delay(frq);
  }
}
