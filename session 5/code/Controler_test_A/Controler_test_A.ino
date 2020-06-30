
#include <Wire.h>

void setup() {
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(9600);
}

byte x = 0;

void loop() {
  Wire.beginTransmission(0x08); // transmit to device #8
  Wire.write('s');        // sends five bytes
  Wire.write(100);              // sends one byte
  Wire.write(100);              // sends one byte
  Wire.endTransmission();    // stop transmitting

  Serial.println("sent");
  delay(500);

    Wire.beginTransmission(0x08); // transmit to device #8
  Wire.write('s');        // sends five bytes
  Wire.write(0);              // sends one byte
  Wire.write(0);              // sends one byte
  Wire.endTransmission();    // stop transmitting

  Serial.println("sent");
  delay(500);
    Wire.beginTransmission(0x08); // transmit to device #8
  Wire.write('s');        // sends five bytes
  Wire.write(0);              // sends one byte
  Wire.write(100);              // sends one byte
  Wire.endTransmission();    // stop transmitting

  Serial.println("sent");
  delay(500);

    Wire.beginTransmission(0x08); // transmit to device #8
  Wire.write('s');        // sends five bytes
  Wire.write(100);              // sends one byte
  Wire.write(0);              // sends one byte
  Wire.endTransmission();    // stop transmitting

  Serial.println("sent");
  delay(500);
}
