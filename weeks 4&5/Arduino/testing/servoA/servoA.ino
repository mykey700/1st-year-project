#include <Servo.h>

const int LEFT = A2; 
const int RIGHT = A3;

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards

int pos = 0;    // variable to store the servo position

int leftVal = 100;    
int rightVal = 100; 

void setup() {
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object
  //Serial.begin(9600);
}

void loop() {
  leftVal = analogRead(LEFT);
  rightVal = analogRead(RIGHT);

  delay(10);
  
  if(leftVal < 5){
    if (pos < 180){
      pos ++;
      myservo.write(pos); 
    }
    }
  else if(rightVal < 5){
  
    if (pos >= 0){
      pos --;
      myservo.write(pos); 
    }
    } 
}
