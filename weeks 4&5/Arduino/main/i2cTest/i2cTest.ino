#include <Wire.h>

#define I2CADDR 0x08

void setup() {
  Wire.begin(); // join i2c bus (address optional for master)
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
}

byte x = 0;

void loop() {
  int num = 140;
  int numa = (num <<8 ) & 0xff;
  int numb = num & 0xff; 
  Serial.println(numa);
  Serial.println(numb);
  Wire.beginTransmission(I2CADDR); // transmit to device #8
  Wire.write('F');    
  Wire.write(numa);
  Wire.write(numb);   
  Wire.endTransmission();    // stop transmitting
  delay(500);
  flash(200,1);

  Wire.beginTransmission(I2CADDR); // transmit to device #8
  Wire.write('B');        // sends five bytes
  Wire.write(numa);
  Wire.write(numb);                // sends one byte
  Wire.endTransmission();    // stop transmitting
  delay(500);
  flash(100,2);
}

void flash(int frq, int period) {
  for (int i = 0; i < period; i++) {
    digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(frq);                       // wait for a second
    digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
    delay(frq);
  }
}
