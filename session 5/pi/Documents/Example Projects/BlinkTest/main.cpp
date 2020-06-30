#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int delay(double lenght);

int main()
{
    wiringPiSetupGpio();
    
    pinMode(04, OUTPUT);

while(1){
        printf("HIGH \n");
        digitalWrite (04,  HIGH) ; 
        delay (0.5) ;
        printf("LOW \n");
        digitalWrite (04,  LOW) ; 
        delay (0.5) ;
    }
    return 0 ;
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
    
