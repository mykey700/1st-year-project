/*
  Ultrasonic Sensor HC-SR04 and Arduino Tutorial

  by Dejan Nedelkovski,
  www.HowToMechatronics.com

*/
#define dataPin 12
#define latchPin 10
#define clockPin 11

byte digitA[] = {
  /*0*/ B10000001, /*1*/ B11001111, /*2*/ B10010010, /*3*/ B10001010, /*4*/ B11001100,
  /*5*/ B10101000, /*6*/ B10100000, /*7*/ B10001111, /*8*/ B10000000, /*9*/ B10001000,
  };
byte digitB[] = {
  /*0*/ B00100100, /*1*/ B11110110, /*2*/ B01001100, /*3*/ B11000100, /*4*/ B10010110,
  /*5*/ B10000101, /*6*/ B00000101, /*7*/ B11110100, /*8*/ B00000100, /*9*/ B10000100
  };
// defines pins numbers
const int trigPin = 0;
const int echoPin = 2;
// defines variables
long duration;
int distance;
void setup() {
  pinMode(dataPin, OUTPUT);
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input
}
void loop() {
  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echoPin, HIGH);
  // Calculating the distance
  distance = duration * 0.034 / 2;
  // Prints the distance on the Serial Monitor
  displayNum(distance);
  delay(500);
}

void displayNum(int num){
  int A = (num / 10)% 10; 
  int B = num % 10;

  //ground latchPin and hold low for as long as you are transmitting
  digitalWrite(latchPin, LOW);
  digitalWrite(clockPin, LOW);
  shiftOut(dataPin, clockPin, LSBFIRST, digitB[B]);
  shiftOut(dataPin, clockPin, LSBFIRST, digitA[A]);
  //return the latch pin high to signal chip that it
  //no longer needs to listen for information
  digitalWrite(latchPin, HIGH);
  }
