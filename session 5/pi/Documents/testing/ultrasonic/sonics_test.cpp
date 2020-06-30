#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include <iostream>
#include <string>
#include <sstream>

#include "pi2c.h"


int toInt(char* string);
int getInt();
int delay(double lenght);

Pi2c GBL_arduino(0x08); //Create a new object "arduino" using address "0x08"

int main(int argc, char** argv)
{
    for(int i =0; i<4;i++){
        getInt();
        delay(1);
    }

    return 0;
}

int toInt(char* string) {

	std::string s = string;

    int i =0;

	try
	{
		i = std::stoi(s);
	}
	catch (std::invalid_argument const &e)
	{
        return 0;
	}
	catch (std::out_of_range const &e)
	{
        return 0;
	}

	return i;
}

int getInt()
{
    char i2cput[1];
    GBL_arduino.i2cRead(i2cput,1);

    printf("dist:%d\n",i2cput[0]);
    return 0;
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