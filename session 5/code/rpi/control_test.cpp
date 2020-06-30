#include <stdio.h>
#include <stdlib.h>
#include "pi2c.h"

int main(){
    Pi2c arduino(0x08); //Create a new object "arduino" using address "0x07"
    char receive[16]; //Create a buffer of char (single bytes) for the data

    //Send move command 
char data[5] = {};
data[0] = 's';
data[1] = '-';
data[2] = (char)50;
data[3] = '-';
data[4] = (char)50;

    arduino.i2cWrite(data,5);
    return 0;
}
