#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include <iostream>
#include <string>
#include <sstream>

#include "pi2c.h"

int contine(char dir);
int stopped(char dir, int time);

int delay(double lenght); // in seconds
int toInt(char* string);

Pi2c GBL_arduino(0x18); //Create a new object "arduino" using address "0x08"

int main(int argc, char** argv)
{
    if (argc <= 1){
        return -1;
    }
    char* command_string = argv[1];

    char command_char = command_string[0];
    printf("command:[%c]\n",command_char);

    int time = 0;

    if(argc >= 3){
    char* time_char = argv[2];
    time = toInt(time_char);
    }

    printf("delay:%d\n",time);

    if(time > 0){

        printf("not continuous\n");

        stopped(command_char, time);

        stopped('s', 20);


    }else
    {
        printf("continuous\n");
        contine(command_char);
    }
    

}

int contine(char dir){
    printf("sending dir\n");
    GBL_arduino.i2cWriteArduinoInt(dir);

    return 0;
}

int stopped(char dir, int time){
    printf("sending dir\n");

    char data[2] = {dir,time};

    GBL_arduino.i2cWrite(data, 2);

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