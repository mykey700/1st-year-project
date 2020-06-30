
// Name of program mainreturn.cpp 
#include <stdio.h>
#include <stdlib.h>
#include <iostream> 

using namespace std; 
  
int main(int argc, char** argv) 
{ 
    printf("%d argumets: \n",argc);
  
    for (int i = 0; i < argc; ++i){ 
        printf("#%d: %s\n",i ,argv[i]);
    }
  
    return 0; 
} 
