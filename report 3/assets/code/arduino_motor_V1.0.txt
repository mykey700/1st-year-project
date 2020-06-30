
#include "H61AEE_S01.h"
#include <Wire.h>

#define GO_RIGHT LEFT
#define GO_LEFT RIGHT

//Global Variables
Vehicle car;
int ForwardSpeed = 15;
int TurnSpeed = 50;

char state;
bool forward = true;

//Main Code
void setup()
{
  Wire.begin(0x18);
  Serial.begin(9600); //Configure the serial port to communicate with the PC
  Wire.onReceive(receiveEvent);

  car.setupVehicle();       //Configure the car library
  car.enableMotors(true);  //Disable the motors so they don't move
}

void loop() {
}

void receiveEvent()
{
  state = Wire.read();

  Serial.println(state);

  car.setDirection(LEFT, forwards);
  car.setDirection(RIGHT, forwards);

  switch (state) {
    case 'f':
      Serial.println("going forward");
    car.setSpeed(LEFT, ForwardSpeed );
    car.setSpeed(RIGHT, ForwardSpeed );
      break;
    case 'b':
    Serial.println("going backwards");
    car.setDirection(LEFT, backwards);
    car.setDirection(RIGHT, backwards);
    car.setSpeed(LEFT, ForwardSpeed );
    car.setSpeed(RIGHT, ForwardSpeed );
      break;
    case 'l':
    Serial.println("going left");
    car.setDirection(LEFT, backwards);
    car.setSpeed(LEFT, TurnSpeed);
    car.setSpeed(RIGHT, TurnSpeed);
      break;
    case 'r':
    Serial.println("going right");
    car.setDirection(RIGHT, backwards);
    car.setSpeed(LEFT, TurnSpeed);
    car.setSpeed(RIGHT, TurnSpeed);
      break;
    case 's':
    Serial.println("stopping");
    car.setSpeed(LEFT, 0);
    car.setSpeed(RIGHT, 0);
      break;
    default:
    Serial.println("invalid command");
      break;
  }
  emptyBuffer();
}

void toggleDirection() {
  if (forward) {
    car.setDirection(BOTH, backwards);
    forward = false;
  } else {
    car.setDirection(BOTH, forwards);
    forward = true;
  }
}

void emptyBuffer(void)
{
  while (Wire.available())
  {
    Wire.read();
  }
}
