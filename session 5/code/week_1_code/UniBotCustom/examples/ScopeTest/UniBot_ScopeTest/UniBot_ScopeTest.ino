///////////////////////////////////////////////////////////////
//                                                           // 
// H61AEE: Dept. EEE, The University of Nottingham 2018      //
//                                                           //
// UniBot_ScopeTest: Arduino code to generate waveforms for  //
//                   oscilloscope measurement                //
//                                                           // 
///////////////////////////////////////////////////////////////
#include <H61AEE_S01.h>

//Global Variables
Vehicle car;

//Main Code
void setup()
{
  Serial.begin(9600); //Configure the serial port to communicate with the PC

  car.setupVehicle();       //Configure the car library
  car.enableMotors(false);  //Disable the motors so they don't move
}

void loop()
{
  Serial.println("Start Test Program");
  delay(3000);  // 3000ms delay before start
  
  car.setSpeed(LEFT, 25);   //Set the left motors to 25% speed
  car.setSpeed(RIGHT, 40);  //Set the right motors to 40% speed

  while(1); //Wait forever doing nothing
}
