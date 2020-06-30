//**********************************//
//* I2C Motor Control Code         *//
//* for Minibot                    *//
//*                                *//
//* UoN 2019 - DF                  *//
//**********************************//

#include "I2CControl.h"
#include <Wire.h>

// name the motor control pins
#define PWMa 5
#define PWMb 7
#define PWMc 6
#define PWMd 8

#define I2CADDR 0x08

// define a limit value
#define LIMIT 1000

void setup()
{
  // configure the motor control pins as outputs
  pinMode(PWMa, OUTPUT);
  pinMode(PWMb, OUTPUT);
  pinMode(PWMc, OUTPUT);
  pinMode(PWMd, OUTPUT);

  Wire.begin(I2CADDR);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);

  Serial.begin(9600);
}

void loop()
{

}

// This function executes whenever I2C data is received
void receiveEvent(uint16_t howMany)
{
  Serial.println("received");
  uint8_t command = 0;
  int16_t parameter = 0;

  if (howMany != 3) // Commands should be 3 bytes long. Anything else is an error
  {
    emptyBuffer();
    Serial.println(howMany);
    return;
  }

  command = Wire.read(); // Read the first byte (the command character)

  boolean commandFound = false;   // Check the received command against the list of valid commands
  for (uint8_t i = 0; i < NUM_COMMANDS; i++)
  {
    if (command == commandList[i])
    {
      commandFound = true;
    }
  }
  if (!commandFound)  // If the command isn't on the list then ignore
  {
    emptyBuffer();
    Serial.println("not command");
    return;
  }

  uint8_t MSB = Wire.read();   // receive MSB of parameter
  uint8_t LSB = Wire.read();   // receive LSB of parameter

  parameter = (MSB << 8) | LSB; // combine the two bytes into a 16bit number

  switch (command)
  {
    case 'F': goForwards(parameter);
      Serial.println("forward");
      Serial.println(parameter);
      break;
    case 'B': goBackwards(parameter);
      Serial.println("back");
      Serial.println(parameter);
      break;
    case 'L': turnLeft(parameter);
      break;
    case 'R': turnRight(parameter);
      break;
    case 'l': setLeftMotor(parameter);
      break;
    case 'r': setRightMotor(parameter);
      break;
    case 'D': returnData = parameter;
      break;
    case 'S': Stop();
      break;
  }
}

// Function to clear the I2C buffer
void emptyBuffer(void)
{
  while (Wire.available())
  {
    Wire.read();
  }
}

// This function is executed whenever data is requested
void requestEvent(void)
{
  // Check what data is required based on the last Data command recieved
  if (returnData == 0)
  {

  }
}


void goForwards(int16_t motorSpeed)
{
  int diff = 0;
  int motorASpeed = abs(motorSpeed) + (diff);
  constrain(motorASpeed, 0, 255);
  int motorBSpeed = abs(motorSpeed);
  constrain(motorBSpeed, 0, 255);

  digitalWrite(PWMa, LOW);
  analogWrite(PWMb, motorASpeed);
  digitalWrite(PWMc, LOW);
  analogWrite(PWMd, motorBSpeed);
}

void goBackwards(int16_t motorSpeed)
{
  motorSpeed = abs(motorSpeed);
  constrain(motorSpeed, 0, 255);

  digitalWrite(PWMa, HIGH);
  analogWrite(PWMb, 255 - motorSpeed);
  digitalWrite(PWMc, HIGH);
  analogWrite(PWMd, 255 - motorSpeed);
}

void turnLeft(int16_t motorSpeed)
{
  motorSpeed = abs(motorSpeed);
  constrain(motorSpeed, 0, 255);

  digitalWrite(PWMa, LOW);
  analogWrite(PWMb, motorSpeed);
  digitalWrite(PWMc, HIGH);
  analogWrite(PWMd, 255 - motorSpeed);
}

void turnRight(int16_t motorSpeed)
{
  motorSpeed = abs(motorSpeed);
  constrain(motorSpeed, 0, 255);

  digitalWrite(PWMa, HIGH);
  analogWrite(PWMb, 255 - motorSpeed);
  digitalWrite(PWMc, LOW);
  analogWrite(PWMd, motorSpeed);
}

void setLeftMotor(int16_t motorSpeed)
{
  constrain(motorSpeed, -255, 255);

  if (motorSpeed < 0)
  {
    digitalWrite(PWMc, HIGH);
    analogWrite(PWMd, 255 - motorSpeed);
  }
  else
  {
    digitalWrite(PWMc, LOW);
    analogWrite(PWMd, abs(motorSpeed));
  }
}

void setRightMotor(int16_t motorSpeed)
{
  constrain(motorSpeed, -255, 255);

  if (motorSpeed < 0)
  {
    digitalWrite(PWMa, HIGH);
    analogWrite(PWMb, 255 - motorSpeed);
  }
  else
  {
    digitalWrite(PWMa, LOW);
    analogWrite(PWMb, abs(motorSpeed));
  }
}

void Stop(){
  digitalWrite(PWMa, LOW);
  digitalWrite(PWMb, LOW);
  digitalWrite(PWMc, LOW);
  digitalWrite(PWMd, LOW);
  }
