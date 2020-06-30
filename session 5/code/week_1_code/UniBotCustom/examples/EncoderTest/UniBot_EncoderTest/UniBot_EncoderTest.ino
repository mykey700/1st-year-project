
///////////////////////////////////////////////////////////////
//                                                           // 
// H61AEE: Dept. EEE, The University of Nottingham 2018      //
//                                                           //
// UniBot_EncoderTest: Arduino code to test the operation of //
//                     the car encoders                      //
//                                                           // 
///////////////////////////////////////////////////////////////
#include <H61AEE_S01c.h>

//Global Variables
Vehicle car;

//Main Code
void setup()
{
  Serial.begin(9600); //Configure the serial port to communicate with the PC

  car.setupVehicle();       //Configure the car library
  car.enableMotors(true);  //Disable the motors so they don't move
}

void loop()
{
  Serial.println("Start Test Program");
  delay(3000);  // 3000ms delay before start
  
  car.setSpeed(LEFT, 50);   //Set the left motors to 50% speed
  delay(5000);
  car.setDirection(LEFT, backwards);
  delay(5000);
  car.setSpeed(LEFT, 0);

  Serial.print("Left Encoder = ");
  Serial.println(car.readEncoder(LEFT));
  Serial.print("Right Encoder = ");
  Serial.println(car.readEncoder(RIGHT));

  car.setSpeed(RIGHT, 50);  //Set the right motors to 50% speed
  delay(5000);
  car.setDirection(RIGHT, backwards);
  delay(5000);
  car.setSpeed(RIGHT, 0);

  Serial.print("Left Encoder = ");
  Serial.println(car.readEncoder(LEFT));
  Serial.print("Right Encoder = ");
  Serial.println(car.readEncoder(RIGHT));

  while(1); //Wait forever doing nothing
}
