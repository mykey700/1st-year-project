///////////////////////////////////////////////////////////////
//                                                           // 
// H61AEE: Dept. EEE, The University of Nottingham 2018      //
// Author: D. Fallows                                        //
//                                                           //
// H61AEE_S01c.h: Basic Vehicle Control Library (custom)     //
//                                                           // 
///////////////////////////////////////////////////////////////

#ifndef H61AEEVehicleWk1_h
#define H61AEEVehicleWk1_h

#define DIR1 7
#define DIR2 6
#define DIR3 5
#define DIR4 4

#define PWM1 3
#define PWM2 9
#define PWM3 10
#define PWM4 11

#define leftPosHigh DIR1 //Create 'nice' names for the MOSFET gate signals
#define leftNegHigh DIR2
#define leftPosLow DIR3
#define leftNegLow DIR4

#define rightPosHigh PWM1
#define rightNegHigh PWM2
#define rightPosLow PWM3
#define rightNegLow PWM4

#define driveEnable 8

#define ENC_R A1
#define ENC_L 12
#define BUTT 2

#define LEFT 0
#define RIGHT 1
#define BOTH 2

enum direction {  //Create a new variable type for the motor direction
  forwards,
  backwards
};

void setupVehicle(void);

class Vehicle
{
	public:
		Vehicle(void);
		void setSpeed(char motor, char speed);
		void setDirection(char motor, direction dir);
		void deltaSpeed(char motor, char speed);
		void deltaDirection(char motor, direction dir);
		float getSpeed(char motor);
		float getDirection(char motor);
		long readEncoder(char motor);
		void setupVehicle(void);
		void enableMotors(bool enable);
		void resetEncoder(char encoder);
		void advancedEncoder(bool enable);
		float batteryVoltage(void);
		float motorCurrent(void);
		float supplyCurrent(void);
};

#endif