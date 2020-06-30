#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sstream>
#include "pi2c.h"

int talk(char* speach);
int talkint(int* speach);
int finish(char* speach);
int toInt(char* string);
int getInt();
int delay(double length);

Pi2c GBL_arduino(0x08);

int main()
{
    int distance = 0;
    char distancechar;
srand(time(NULL));
int trigger = 150;


    printf("Working\n");

    while (1)
    {
        //distance = 0;
        printf("looped\n");
        //distance++;
        distance = (int)getInt();
        printf("Distance got\n");
        printf("%d\n", distance);

        if (distance < trigger)
        {
            printf("Distance < 150cm\n");
            talkint((int*)distance);
            talk((char*)"centimeters");
        }

        if (distance >= trigger)
        {
            printf("Distance >= 150 =cm\n");
            talkint((int*)distance);
            finish((char*)"centimeters");
            printf("End");
        }

        delay(1);
    }

}

int talk(char* speach)
{
    printf("Into talk function\n");
    printf("%c\n", speach);
    char command[80];
    int lenght = sprintf(command,"espeak %s",speach);

    printf("c:%s \n",command);
    system(command);
    return 0;
}

int talkint(int* speach)
{
    printf("Into talk function\n");
    printf("%d\n", speach);
    char command[80];
    int lenght = sprintf(command,"espeak %d",speach);

    printf("c:%s \n",command);
    system(command);
    return 0;
}

int finish(char* speach)
{
    printf("Into finish function\n");
    char command[80];
    int lenght = sprintf(command,"espeak %s",speach);
    printf("c:%s \n",command);
    system(command);
    system("amixer set 'Master' 100%");
    system("play ~/Music/cidershort.mp3");
    return 0;
}

int getInt()
{
    printf("Into getInt function\n");
    char i2cput[1];
    GBL_arduino.i2cRead(i2cput,1);

    printf("dist:%d\n",i2cput[0]);
    printf("Exit getInt function\n");

    return (i2cput[0]);
}

int delay(double length)
{
    clock_t start = clock();
    while(1)
    {
        clock_t current = clock();
        double time = (double)(current - start) / (CLOCKS_PER_SEC);
        if(time >= length)
        {
            return 1;
        }
    }
    return  0;
}
