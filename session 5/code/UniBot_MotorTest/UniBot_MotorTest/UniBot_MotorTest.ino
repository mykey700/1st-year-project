///////////////////////////////////////////////////////////////
//                                                           // 
// H61AEE: Dept. EEE, The University of Nottingham 2018      //
//                                                           //
// UniBot_MotorTest: Arduino code to test the operation of   //
//                   the car motors                          //
//                                                           // 
///////////////////////////////////////////////////////////////
#include <H61AEE_S01.h>

//Global Variables

#define GO_RIGHT LEFT
#define GO_LEFT RIGHT

Vehicle car;

//Main Code
void setup()
{
  Serial.begin(9600); //Configure the serial port to communicate with the PC

  car.setupVehicle();       //Configure the car library
  car.enableMotors(true);  //Disable the motors so they don't move

  car.setDirection(BOTH, forwards);
}

void loop()
{
  Serial.println("Start Test Program");
  delay(3000);  // 3000ms delay before start
  
  car.setSpeed(GO_RIGHT, 20);   //Set the left motors to 50% speed
  Serial.println("right f");
  delay(5000);
  car.setDirection(GO_RIGHT, backwards);
  Serial.println("right b");
  delay(5000);
  car.setSpeed(GO_RIGHT, 0);
  Serial.println("right 0");

  delay(5000);
  
  car.setSpeed(GO_LEFT, 20);  //Set the right motors to 50% speed
  Serial.println("left f");
  delay(5000);
  car.setDirection(GO_LEFT, backwards);
  Serial.println("left b");
  delay(5000);
  car.setSpeed(GO_LEFT, 0);
  Serial.println("left 0");

  while(1); //Wait forever doing nothing
}
