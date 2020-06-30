#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include <iostream>
#include <string>
#include <sstream>

#include "pi2c.h"

void set_servo(int pos);
int get_distance(char pos);

int stringToInt(String input);
int delay(double lenght);

Pi2c GBL_arduino(0x08); //Create a new object "arduino" using address "0x18"

int main(int argc, char** argv)
{
    if (argc <= 1){
        return 0;
    }
    char* command = argv[1];

    char com = command[0];
    printf("command:[%c]\n",com);

    int position =0;

    switch(com){
    case 's':
        printf("setting servo\n");
        
        position = (int)(argv[2] - 48);
        set_servo(position);
        break;
    case 'b':
        printf("get back sensor\n");
        get_distance('b');
        break;
    case 'l':
        printf("get left sensor\n");
        get_distance('l');
        break;
    defualt:
        printf("nothing\n");
        break;
    }
    return 0;
}

void set_servo(int pos)
{
    char data[5] = {};
    data[0] = 's';

    data[1] = pos;

    printf("pos %d \n",data[1]);

    GBL_arduino.i2cWrite(data, 2);
    
}

int get_distance(char pos)
{
    if  (pos == 'b') {
    printf("getting back:");
    char info[] = "b";
    GBL_arduino.i2cWrite(info, 1);
  } else if (pos == 'l') {
    printf("getting back:");
    char info[] = "l";
    GBL_arduino.i2cWrite(info, 1);
  }

    char data[1];
    GBL_arduino.i2cRead(data,1);

    return (int)data[0];
}

int delay(double lenght){
    clock_t start = clock();
    while(1){
        clock_t current = clock();
        double time = (double)(current - start) / (CLOCKS_PER_SEC);
        if(time >= lenght){
            return 1;
            }
     }
     return  0;
    }