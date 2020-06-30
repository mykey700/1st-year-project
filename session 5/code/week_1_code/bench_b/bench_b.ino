#include <H61AEE_S01c.h>

//Global Variables
Vehicle car;

int curveTol = 1;
int curveAdj = 1;
int deadStopDelay = 100;

bool forward = true;
int leftSpeed = 0;
int rightSpeed = 0;

//Main Code
void setup()
{
  Serial.begin(9600); //Configure the serial port to communicate with the PC

  car.setupVehicle();       //Configure the car library
  car.enableMotors(true);  //Disable the motors so they don't move

}
void loop() {
  car.setSpeed(BOTH, 30);
  //accelerate(90,3,10);
  goDistance(510, false, true, false, 0);
  car.setSpeed(BOTH, 30);
  goDistance(500, false, true, true, 80);
  while (1);
  //  delay(300);
  //  car.setSpeed(BOTH, 0);
  //  delay(500);
  //  toggleDirection();

}

void accelerate(int top, int inc,int tick){
  for(int v = car.getSpeed(LEFT);v <top;v = v+inc){  //change to BOTH
      car.setSpeed(BOTH,v);
      Serial.println(v);
      delay(tick);
    }
}

void goDistance(int distance, bool correctD, bool correctA, bool reset, int deadStop) {
  if(reset){
  car.resetEncoder(BOTH);
  }
  int count = 0;
  int anlCorrect = 0;
  int targetSpeed = car.getSpeed(LEFT);
  //Serial.print("DTG:");
  //Serial.println(distance);

  while (getDistance(BOTH) < distance) {
    if (correctA) {
      if (getDistance(LEFT) - getDistance(RIGHT)  > curveTol) {
        Serial.println("correcing right");
        //stop LEFT
        car.setSpeed(LEFT, 0);
        //wait until LEFT == RIGHT
        while (car.readEncoder(RIGHT) < car.readEncoder(LEFT)) {
          //do nothing
          anlCorrect++;
          delay(1);
        }
        Serial.println(anlCorrect);
        //start again
        car.setSpeed(BOTH, targetSpeed);
      }
      if (getDistance(RIGHT) - getDistance(LEFT)  > curveTol) {
        Serial.println("correcing left");
        //stop RIGHT
        car.setSpeed(RIGHT, 0);
        //wait until LEFT == RIGHT
        while (car.readEncoder(RIGHT) > car.readEncoder(LEFT)) {
          //do nothing
          anlCorrect++;
          delay(1);
        }
        Serial.println(anlCorrect);
        //start again
        car.setSpeed(BOTH, targetSpeed);
      }
    }
    count++;
  }
  if (deadStop > 0) {
    toggleDirection();
    car.setSpeed(BOTH, deadStop);
    delay(deadStopDelay);
    car.setSpeed(BOTH, 0);
    toggleDirection();
  } else {
    car.setSpeed(BOTH, 0);
  }

  Serial.print("DL:");
  Serial.println(getDistance(LEFT));
  Serial.print("DR:");
  Serial.println(getDistance(RIGHT));
  Serial.print("Count:");
  Serial.println(count);
  Serial.print("Corrections:");
  Serial.println(anlCorrect);
  car.setSpeed(BOTH, 0);
  if (correctD) {
    delay(500);
    if (getDistance(BOTH) + 2 > distance) {
      Serial.print("distance:");
      Serial.println(getDistance(BOTH));
      //correct overshoot
      int correction = getDistance(BOTH) - distance;
      Serial.print("corrrect:");
      Serial.println(correction);

      toggleDirection();
      car.setSpeed(BOTH, 10);
      goDistance(correction, true, false, true,20);

    }
  }
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

void toggleDirection() {
  if (forward) {
    car.setDirection(BOTH, backwards);
    forward = false;
  } else {
    car.setDirection(BOTH, forwards);
    forward = true;
  }
}
