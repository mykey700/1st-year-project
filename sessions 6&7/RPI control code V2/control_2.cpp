#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include <iostream>
#include <string>
#include <sstream>

#include "pi2c.h"

int goFroward(int argc, char** argv);
int goBackward(int argc, char** argv);
int turnLeft(int argc, char** argv);
int turnRight(int argc, char** argv);

int toInt(char* string);
int setSpeeds(int left, int right);
int delay(double lenght);

Pi2c GBL_arduino(0x18); //Create a new object "arduino" using address "0x08"

int main(int argc, char** argv)
{
    if (argc <= 1){
        return 0;
    }
    char* command = argv[1];

    char com = command[0];
    printf("command:[%c]\n",com);

    switch(com){
    case 'f':
        printf("going forwards\n");
        goFroward(argc, argv);
        break;
    case 'b':
        printf("going backwards\n");
        goBackward(argc, argv);
        break;
    case 'l':
        printf("turn left\n");
        turnLeft(argc, argv);
        break;
    case 'r':
        printf("turn right\n");
        turnRight(argc, argv);
        break;
    default:
        printf("nothing\n");
        break;
}
    return 0;
}

int goFroward(int argc, char** argv){
    int speed = 0;
    int time = 0;

    for (int i = 0; i < argc; i++){ 
        if(argv[i][0] == '-'){
            printf("\tflag %c\n",argv[i][1]);
            switch (argv[i][1])
            {
            case 't':
                time = toInt(argv[i+1]);
                printf("\t time:%d\n",time);
                break;
            case 's':
                speed = toInt(argv[i+1]);
                printf("\t speed:%d\n",speed);
                break;
            default:
                break;
            }
        }
        printf("#%d: %s\n",i ,argv[i]);
    }

    //set motor speeds
    setSpeeds(speed,speed);
    delay(time);
    printf("stoped\n");
    setSpeeds(0,0);

    return 0;

}
int goBackward(int argc, char** argv){
    int speed = 0;
    int time = 0;

    for (int i = 0; i < argc; i++){ 
        if(argv[i][0] == '-'){
            printf("\tflag %c\n",argv[i][1]);
            switch (argv[i][1])
            {
            case 't':
                time = toInt(argv[i+1]);
                printf("\t time:%d\n",time);
                break;
            case 's':
                speed = toInt(argv[i+1]);
                printf("\t speed:%d\n",speed);
                break;
            default:
                break;
            }
        }
        printf("#%d: %s\n",i ,argv[i]);
    }
    //setmotorspeeds
    setSpeeds(-speed,-speed);
    delay(time);
    printf("stoped\n");
    setSpeeds(0,0);

    return 0;
}
int turnLeft(int argc, char** argv){
    int speed = 0;
    int time = 0;

    for (int i = 0; i < argc; i++){ 
        if(argv[i][0] == '-'){
            printf("\tflag %c\n",argv[i][1]);
            switch (argv[i][1])
            {
            case 't':
                time = toInt(argv[i+1]);
                printf("\t time:%d\n",time);
                break;
            case 's':
                speed = toInt(argv[i+1]);
                printf("\t speed:%d\n",speed);
                break;
            default:
                break;
            }
        }
        printf("#%d: %s\n",i ,argv[i]);
    }
    //setmotorspeeds
    setSpeeds(-speed,speed);
    delay(time);
    printf("stoped\n");
    setSpeeds(0,0);

    return 0;
}
int turnRight(int argc, char** argv){
    int speed = 0;
    int time = 0;

    for (int i = 0; i < argc; i++){ 
        if(argv[i][0] == '-'){
            printf("\tflag %c\n",argv[i][1]);
            switch (argv[i][1])
            {
            case 't':
                time = toInt(argv[i+1]);
                printf("\t time:%d\n",time);
                break;
            case 's':
                speed = toInt(argv[i+1]);
                printf("\t speed:%d\n",speed);
                break;
            default:
                break;
            }
        }
        printf("#%d: %s\n",i ,argv[i]);
    }
    setSpeeds(speed,-speed);
    delay(time);
    printf("stoped\n");
    setSpeeds(0,0);
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

int setSpeeds(int left, int right)
{
    char data[5] = {};
    data[0] = 's';

    if (left < 0)
    {
        data[1] = '-';
    }else{
        data[1] = ' ';
    }
    data[2] = (char)abs(left);

    if (right < 0)
    {
        data[3] = '-';
    }else{
        data[3] = ' ';
    } 
    data[4] = (char)abs(right);

    GBL_arduino.i2cWrite(data, 5);
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