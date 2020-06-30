#define dataPin 12
#define latchPin 13
#define clockPin 11

byte digitA[] = {
  /*0*/ B10000001,
  /*1*/ B11001111,
  /*2*/ B10010010,
  /*3*/ B10001010,
  /*4*/ B11001100,
  /*5*/ B10101000,
  /*6*/ B10100000,
  /*7*/ B10001111,
  /*8*/ B10000000,
  /*9*/ B10001000,
  };
byte digitB[] = {
  /*0*/ B00100100,
  /*1*/ B11110110,
  /*2*/ B01001100,
  /*3*/ B11000100,
  /*4*/ B10010110,
  /*5*/ B10000101,
  /*6*/ B00000101,
  /*7*/ B11110100,
  /*8*/ B00000100,
  /*9*/ B10000100
  };

void setup() {
  // initialize I/O pins
  pinMode(dataPin, OUTPUT);
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  //count up routine
  for(int i=0; i < 100; i++){
    displayNum(i);
    delay(100);
  }
}

void digitdisplay(int A,int B){
  //ground latchPin and hold low for as long as you are transmitting
  digitalWrite(latchPin, LOW);
  digitalWrite(clockPin, LOW);
  shiftOut(dataPin, clockPin, LSBFIRST, digitB[B]);
  shiftOut(dataPin, clockPin, LSBFIRST, digitA[A]);
  //return the latch pin high to signal chip that it
  //no longer needs to listen for information
  digitalWrite(latchPin, HIGH);
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
