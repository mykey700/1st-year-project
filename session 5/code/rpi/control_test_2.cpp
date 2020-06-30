#include <stdio.h>
#include <stdlib.h>
#include "pi2c.h"

int setSpeeds(int left, int right);
int delay(double lenght);

Pi2c GBL_arduino(0x08); //Create a new object "arduino" using address "0x08"

int main()
{
    //Send move command
    setSpeeds(20,20);
    delay(0.5);
    setSpeed(20,-20);
    delay(0.25);
    setSpeed(-20,-20);
    delay(0.5);
    return 0;
}

int setSpeeds(int left, int right)
{
    char data[5] = {};
    data[0] = 's';

    if (left < 0)
    {
        data[1] = '-';
    }else{
        data[1] = '';
    }
    data[2] = (char)abs(left);

    if (right < 0)
    {
        data[3] = '-';
    }else{
        data[3] = '';
    } 
    data[4] = (char)abs(right);

    GBL_arduino.i2cWrite(data, 5);
}

int delay(double lenght){
    clock_t start = clock();
    while(1){
        clock_t current = clock();
        double time = (double)(current - start) / CLOCKS_PER_SEC;
        if(time >= lenght){
            return 1;
            }
     }
     return  0;
    }