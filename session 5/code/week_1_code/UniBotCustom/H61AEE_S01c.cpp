///////////////////////////////////////////////////////////////
//                                                           // 
// H61AEE: Dept. EEE, The University of Nottingham 2018      //
// Author: D. Fallows                                        //
//                                                           //
// H61AEE_S01c.cpp: Basic Vehicle Control Library (custom)   //
//                                                           // 
///////////////////////////////////////////////////////////////

#include <TimerOne.h>
#include <H61AEE_S01.h>
#include "Arduino.h"

long leftEnc = 0;  //These variables contain the number of encoder pulses
long rightEnc = 0;

volatile char leftMotorSpeed = 0;
volatile char rightMotorSpeed = 0;
bool adEnc = false;
volatile direction leftMotorDir = forwards;
volatile direction rightMotorDir = forwards;

//Interrupt on change setup function
void pciSetup(byte pin)
{
    *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
    PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
    PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}

//Interrupt Service Routines
ISR (PCINT0_vect) // handle pin change interrupt for D8 to D13 here
{  
	//Increment left encoder
	if(adEnc)
	{
		if(leftMotorDir == forwards)
		{
			leftEnc++;
		}
		else
		{
			leftEnc--;
		}
	}
	else
	{
		leftEnc++;
	}
}
 
ISR (PCINT1_vect) // handle pin change interrupt for A0 to A5 here
{
	//Increment right encoder
	if(adEnc)
	{
		if(rightMotorDir == forwards)
		{
			rightEnc++;
		}
		else
		{
			rightEnc--;
		}
	}
	else
	{
		rightEnc++;
	}
}  

void toggleMotors(void)
{
	if(digitalRead(driveEnable) == 1)
		digitalWrite(driveEnable, LOW);
	else
		digitalWrite(driveEnable, HIGH);
}

void pwmControl(void)
{
  static char timerCount = 0;  //Variable to count how many times the interrupt has been called in a single PWM cycle
  static direction currentRightDir, currentLeftDir; 
  static char currentLeftSpeed, currentRightSpeed;

  if(timerCount == leftMotorSpeed)
  {
    if(currentLeftDir == backwards)
    {
      PORTD |= B10000000;
    }
    else
    {
      PORTD |= B01000000;
    }
  }
  if(timerCount == rightMotorSpeed)
  {
    if(currentRightDir == forwards)
    {
	  PORTD |= B00001000;
    }
    else
    {
	  PORTB |= B00000010;
    }
  }

  timerCount--; //Decrement the count with each interrupt call

  if(timerCount <= 0)
  {
    timerCount = 100; //Reset the count when we hit zero

    PORTD &= B00000111; //Use PORT control to switch off the H-bridges
    PORTB &= B11110001;
    
	
    currentLeftDir = leftMotorDir;  //Update the motor directions for this cycle
    currentRightDir = rightMotorDir;
	/*
	currentLeftSpeed = leftMotorSpeed;
	currentRightSpeed = rightMotorSpeed;
    */
    if(currentLeftDir == backwards)  //Enable the low-side FETs based on direction
    {
      PORTD |= B00010000;
    }
    else
    {
      PORTD |= B00100000;
    }
    if(currentRightDir == forwards)
    {
      PORTB |= B00001000;
    }
    else
    {
      PORTB |= B00000100;
    }
  }
}

void Vehicle::setupVehicle(void)
{
	pinMode(leftPosHigh, OUTPUT); //Configure DIR pins
	pinMode(leftPosLow, OUTPUT);
	pinMode(leftNegHigh, OUTPUT);
	pinMode(leftNegLow, OUTPUT);

	pinMode(rightPosHigh, OUTPUT); //Configure PWM pins
	pinMode(rightPosLow, OUTPUT);
	pinMode(rightNegHigh, OUTPUT);
	pinMode(rightNegLow, OUTPUT);
	
	PORTD &= B00000111;	//Switch off outputs
	PORTB &= B11110001;
	
	pinMode(driveEnable, OUTPUT);
	digitalWrite(driveEnable, LOW);
	
	pinMode(ENC_R, INPUT_PULLUP);  	//Configure encoder pins
	pinMode(ENC_L, INPUT_PULLUP);
	pinMode(BUTT, INPUT);			//Configure motor control pin
	pinMode(12, INPUT);
	//attachInterrupt(digitalPinToInterrupt(BUTT), toggleMotors, FALLING);
	pciSetup(ENC_R);
	pciSetup(ENC_L);
	
	Timer1.initialize(50);  //Setup a timer to control the PWM signal generation (period in microseconds)
	Timer1.attachInterrupt(pwmControl);
}

// Functions for vehicle class
Vehicle::Vehicle(void)
{
	
}
void Vehicle::setSpeed(char motor, char speed)
{
	/* direction dir;
	if(speed >= 0)
	{
		dir = forwards;
	}
	else
	{
		dir = backwards;
		speed = -speed;
	} */
	
	Timer1.stop();
	
	switch(motor)
	{
		case LEFT:	//leftMotorDir = dir;
					leftMotorSpeed = speed;
					break;
		case RIGHT:	//rightMotorDir = dir;
					rightMotorSpeed = speed;
					break;
		case BOTH:	//leftMotorDir = dir;
					//rightMotorDir = dir;
					leftMotorSpeed = speed;
					rightMotorSpeed = speed;
					break;
	}
	
	Timer1.resume();
}

void Vehicle::setDirection(char motor, direction dir)
{	
	Timer1.stop();

	switch(motor)
	{
		case LEFT:	leftMotorDir = dir;
					break;
		case RIGHT:	rightMotorDir = dir;
					break;
		case BOTH:	leftMotorDir = dir;
					rightMotorDir = dir;
					break;
	}
	
	Timer1.resume();
}

void Vehicle::deltaSpeed(char motor, char speed)
{
	/* direction dir;
	if(speed >= 0)
	{
		dir = forwards;
	}
	else
	{
		dir = backwards;
		speed = -speed;
	} */
	
	Timer1.stop();
	
	switch(motor)
	{
		case LEFT:	//leftMotorDir = dir;
					speed = leftMotorSpeed + speed;
					leftMotorSpeed = speed;
					break;
		case RIGHT:	//rightMotorDir = dir;
					speed = rightMotorSpeed + speed;
					rightMotorSpeed = speed;
					break;
		case BOTH:	//leftMotorDir = dir;
					//rightMotorDir = dir;
					leftSpeed = leftMotorSpeed + speed;
					rightSpeed = rightMotorSpeed + speed;
					leftMotorSpeed = leftSpeed;
					rightMotorSpeed = rightSpeed;
					break;
	}
	
	Timer1.resume();
}

void Vehicle::deltaDirection(char motor, direction dir)
{	
	Timer1.stop();

	switch(motor)
	{
		case LEFT:	leftMotorDir = dir;
					break;
		case RIGHT:	rightMotorDir = dir;
					break;
		case BOTH:	leftMotorDir = dir;
					rightMotorDir = dir;
					break;
	}
	
	Timer1.resume();
}

long Vehicle::readEncoder(char motor)
{
	if(motor == LEFT)
		return leftEnc;
	else
		return rightEnc;
}

void Vehicle::resetEncoder(char encoder)
{
	noInterrupts();
	
	if(encoder == LEFT)
	{
		leftEnc = 0;
	}
	else if(encoder == RIGHT)
	{
		rightEnc = 0;
	}
	else
	{
		leftEnc = 0;
		rightEnc = 0;
	}
	
	interrupts();
}

void Vehicle::advancedEncoder(bool enable)
{
	adEnc = enable;
}

float Vehicle::getSpeed(char motor){
	switch(motor)
	{
		case LEFT:	return leftMotorSpeed;
					break;
		case RIGHT:	return rightMotorSpeed;
					break;
	}
}

float Vehicle::getDirection(char motor){
	switch(motor)
	{
		case LEFT:	return leftMotorDir;
					break;
		case RIGHT:	return rightMotorDir;
					break;
	}
}

float Vehicle::batteryVoltage(void)
{
	int adcval = analogRead(A6);
	
	float volts = ((float)adcval/1024.0)*5.0*2.2;
	
	return volts;
}

float Vehicle::motorCurrent(void)
{
	int adcval = analogRead(A2);
	
	float amps = (((float)adcval/1024.0)*5.0)*2.5;
	
	return amps;
}

float Vehicle::supplyCurrent(void)
{
	int adcval = analogRead(A3);
	
	float amps = (((float)adcval/1024.0)*5.0)*2.5;
	
	return amps;
}

void Vehicle::enableMotors(bool enable)
{
	if(enable)
		digitalWrite(driveEnable, HIGH);
	else
		digitalWrite(driveEnable, LOW);
}