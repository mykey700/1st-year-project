#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int talk(char* speach);

int main(int argc, char** argv){

    talk((char*)"hello");
}

int talk(char* speach){

    char command[80];
    int lenght = sprintf(command,"espeak %s",speach);

    printf("c:%s \n",command);
    system(command);
    return 0;
}
