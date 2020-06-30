// ---------------------------------------------------------------------------
// Example NewPing library sketch that pings 3 sensors 20 times a second.
// ---------------------------------------------------------------------------

#include <NewPing.h>
#include "Statistic.h"


#define SONAR_NUM 3      // Number of sensors.
#define MAX_DISTANCE 100 // Maximum distance (in cm) to ping.

#define dataPin 12
#define latchPin 10
#define clockPin 11

// define button pins
#define LEFT A2
#define RIGHT A3
int leftVal = 100;
int rightVal = 100; 
int index = 0;

//for 7seg display
byte digitA[] = {
  /*0*/ B10000001, /*1*/ B11001111, /*2*/ B10010010, /*3*/ B10001010, /*4*/ B11001100,
  /*5*/ B10101000, /*6*/ B10100000, /*7*/ B10001111, /*8*/ B10000000, /*9*/ B10001000,
};
byte digitB[] = {
  /*0*/ B00100100, /*1*/ B11110110, /*2*/ B01001100, /*3*/ B11000100, /*4*/ B10010110,
  /*5*/ B10000101, /*6*/ B00000101, /*7*/ B11110100, /*8*/ B00000100, /*9*/ B10000100
};

NewPing sonar[SONAR_NUM] = {   // Sensor object array.
  NewPing(13, 2, MAX_DISTANCE), // Each sensor's trigger pin, echo pin, and max distance to ping.
  NewPing(4, 5, MAX_DISTANCE),
  NewPing(7, 8, MAX_DISTANCE)
};

void setup() {
  //Serial.begin(9600); // Open serial monitor at 115200 baud to see ping results.
  // initialize I/O pins
  pinMode(dataPin, OUTPUT);
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  leftVal = analogRead(LEFT);
  rightVal = analogRead(RIGHT);
    if (leftVal < 5) {
      if (index >= 2) {
        index = 0;
      } else {
        index++;
      }
  } else if (rightVal < 5) {
    if (index <= 0) {
      index = 2;
    } else {
      index--;
    }
  }
  displayNum(sonar[index].ping_cm());

  Serial.print("sensor:");
  Serial.print(index);
  Serial.print("/tdisance:");
  Serial.println(sonar[index].ping_cm());
  
  delay(50);
  //  for (uint8_t i = 0; i < SONAR_NUM; i++) { // Loop through each sensor and display results.
  //    delay(1000); // Wait 50ms between pings (about 20 pings/sec). 29ms should be the shortest delay between pings.
  //    for (int i; i > 300; i++) {
  //      displayNum(sonar[i].ping_cm());
  //      delay(50);
  //    }
  //  }
  //  flash(40,3);
}

int getDistance(int sensor, int repeats) {
  Statistic sensorStat;
  int measurements[repeats];
  for (int i = 0; i < repeats; i++) {
    measurements[i] = sonar[sensor].ping_cm();
    delay(35); //29ms should be the shortest delay between pings
  }
  for (int i = 0; i < repeats; i++) {
    sensorStat.add(measurements[i]);
  }
  int arv = sensorStat.average();
  int stdev = sensorStat.pop_stdev();
  Statistic sensorcorrected;
  int upper = arv + stdev;
  int lower = arv - stdev; 
  for (int i = 0; i < repeats; i++) {
    if (measurements[i] < upper || measurements[i] > lower) {
      sensorcorrected.add(measurements[i]);
    }
  }
  arv = sensorcorrected.average();
  return arv;

  sensorStat.clear();
  sensorcorrected.clear();
}

void displayNum(int num) {
  int A = (num / 10) % 10;
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
