/****************************************/
// Header file for CAR template code
// H61AEE Session 2
//
// D. Fallows
// University of Nottingham 2018
/****************************************/

#ifndef I2CCONTROL_H
#define I2CCONTROL_H

int16_t returnData = 0;

// List of commands available
#define NUM_COMMANDS 8
uint8_t commandList[NUM_COMMANDS] = {'F', 'B', 'L', 'R', 'l', 'r','D','S'};

// Function declarations
void goForwards(int16_t motorspeed);
void goBackwards(int16_t motorspeed);
void turnLeft(int16_t motorspeed);
void turnRight(int16_t motorspeed);
void setLeftMotor(int16_t motorspeed);
void setRightMotor(int16_t motorspeed);

void Stop();
void requestEvent(void);
void receiveEvent(uint16_t howMany);
void emptyBuffer(void);

#endif
