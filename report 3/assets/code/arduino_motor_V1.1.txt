#include <millisDelay.h>
#include <Wire.h>

#include "H61AEE_S01.h"


#define GO_RIGHT LEFT
#define GO_LEFT RIGHT

//Global Variables
Vehicle car;
int ForwardSpeed = 15;
int TurnSpeed = 50;

int STORE_dir;

int PREV_dir;


millisDelay motor_delay;

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
  if (motor_delay.justFinished()) {
    Serial.println("timer finished");
    move_time(STORE_dir,0,true);
  }
}

void receiveEvent()
{
  char state = Wire.read();
  
  Serial.print("state:");
  Serial.println(state);

  STORE_dir = state;

  int time_move = Wire.read();

  Serial.print("delay time:");
    Serial.println(time_move);

  if (time_move != 0) {
    time_move = (time_move * 10);
    Serial.print("delay time corrected:");
    Serial.println(time_move);

    move_time(state, time_move, false);
  } else {
    PREV_dir = state;
    move_car(state);
  }
  emptyBuffer();
}

void move_time(char dir, int time_spent, bool timer_done) {
  Serial.print("dir:"); Serial.println(dir);
  Serial.print("time:"); Serial.println(time_spent);
  Serial.print("timer done:"); Serial.println(timer_done);
  if (timer_done) {
    move_car(PREV_dir);
  } else {
    move_car(dir);
    motor_delay.start(time_spent);
  }
}


void move_car(char dir) {
  car.setDirection(LEFT, forwards);
  car.setDirection(RIGHT, forwards);

  switch (dir) {
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
}

void emptyBuffer(void)
{
  while (Wire.available())
  {
    Wire.read();
  }
}
