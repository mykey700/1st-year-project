#include <Wire.h>
#include <H61AEE_S01.h>

#define GO_RIGHT LEFT
#define GO_LEFT RIGHT

Vehicle car;

void setup() {
  Wire.begin(0x18);                // join i2c bus with address #8
  Wire.onReceive(receiveEvent); // register event
  Serial.begin(9600);           // start serial for output

  car.setupVehicle();       //Configure the car library
  car.enableMotors(true);  //Disable the motors so they don't move
}

void loop() {
  
}

// function that executes whenever data is received from master
// this function is registered as an event, see setup()
void receiveEvent(int howMany) {
  char flag = ' ';

  flag = Wire.read();

  Serial.print("flag: ");
  Serial.println(flag);

  switch (flag) {
    case 's':
      if (howMany != 5) {
        Serial.println("invalid input for s");
        emptyBuffer();
        return;
      }
      char leftDir = Wire.read();
      int leftS = Wire.read();
      char rightDir = Wire.read();
      int rightS = Wire.read();
      SetSpeeds(leftDir, leftS, rightDir, rightS);
      break;
    case 'd':
      Wire.write(getDistance(GO_LEFT));
      Wire.write(getDistance(GO_LEFT));
      break;
    default:
      Serial.println("invalid flag");
      emptyBuffer();
      break;
  }
  return;
}

void SetSpeeds(char leftDir, int left, char rightDir, int right) {
  if (leftDir == '-') {
    car.setDirection(GO_LEFT, backwards);
    Serial.println("left going backwards");
  } else {
    car.setDirection(GO_LEFT, forwards);
    Serial.println("left going forwards");
  }

  if (rightDir == '-') {
    car.setDirection(GO_RIGHT, backwards);
    Serial.println("right going backwards");
  } else {
    car.setDirection(GO_RIGHT, forwards);
    Serial.println("right going forwards");
  }

  car.setSpeed(GO_LEFT, abs(left));
  car.setSpeed(GO_RIGHT, abs(right));
  
  Serial.print(leftDir);
  Serial.println(left);
  Serial.print(rightDir);
  Serial.println(right);  
}

int getDistance(char motor) {
  int left = car.readEncoder(LEFT);
  int right = car.readEncoder(RIGHT);
  int both = (left + right) / 2;
  switch (motor)
  {
    case LEFT:  return left / 17;
      break;
    case RIGHT: return right / 17;
      break;
    case BOTH:  return both / 17;
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
