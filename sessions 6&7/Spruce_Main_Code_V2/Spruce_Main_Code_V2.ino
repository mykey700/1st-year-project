#include <millisDelay.h>
#include <Wire.h>

#include "H61AEE_S01.h"


#define GO_RIGHT LEFT
#define GO_LEFT RIGHT

//Global Variables
Vehicle car;
int ForwardSpeed = 15;
int TurnSpeed = 50;

int CONT_dir = 's';

struct command
{
  char dir;

  bool timed = false;
  int move_time = 0;
  millisDelay move_delay;
  bool timer_start = false;
  bool timer_done = false;

  bool done = false;
};
typedef struct command Command;

Command que[8];

int que_lenght = 0;
int que_pos = 0;



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

  if (que_lenght == 0) {
    //que = NULL;
    return;
  }

  Serial.print("que pos:"); Serial.println(que_pos);
  Serial.print("que lenght:"); Serial.println(que_lenght);

  if (que[que_pos].timed) {
    Serial.println("is timed");
    if (que[que_pos].timer_start) {
      Serial.println("timer stated");
      if (que[que_pos].move_delay.justFinished()) {
        Serial.println("timer finished");
        que[que_pos].timer_done = true;
        execute(que_pos);
      }
    } else {
      Serial.println("executing timed command");
      execute(que_pos);
    }
  } else {
    Serial.println("executing untimed command");
    execute(que_pos);
  }

  if (que[que_pos].done) {
    que_pos++;
  }


  if (que_pos >= que_lenght) {
    que_pos = 0;
  }

}

void receiveEvent()
{

  Command new_sent;
  char state = Wire.read();

  Serial.print("\tstate:");
  Serial.println(state);

  new_sent.dir = state;

  int time_move = Wire.read();

  Serial.print("delay time:");
  Serial.println(time_move);

  if (time_move != 0) {
    time_move = time_move * 10;
    Serial.print("delay time corrected:");
    Serial.println(time_move);
    new_sent.timed = true;
    new_sent.move_time = time_move;
  }
  //add to que


  que[que_lenght] = new_sent;
  que_lenght++;

  emptyBuffer();
}

void execute(int q_pos) {
  Serial.print("dir:"); Serial.println(que[q_pos].dir);
  Serial.print("timed:"); Serial.println(que[q_pos].timed);

  if (que[q_pos].timed) {
    Serial.print("time:"); Serial.println(que[q_pos].move_time);
    Serial.print("timer started:"); Serial.println(que[q_pos].timer_start);
    if (que[q_pos].timer_done) {
      Serial.println("timer stoped");
      set_motor(CONT_dir);
      Serial.println("executed");
      que[q_pos].done = true;
      que_lenght--;
    } else {
      Serial.println("timer started");
      set_motor(que[q_pos].dir);
      que[q_pos].move_delay.start(que[q_pos].move_time);
      que[q_pos].timer_start = true;
    }
  } else {
    Serial.println("not timed");
    set_motor(que[q_pos].dir);
    CONT_dir = que[q_pos].dir;
    Serial.println("executed");
    que[q_pos].done = true;
    que_lenght--;
  }

}


void set_motor(char dir) {
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
