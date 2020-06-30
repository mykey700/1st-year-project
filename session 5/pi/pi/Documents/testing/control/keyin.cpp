#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <ncurses.h>

#include <iostream>
using namespace std;

// #define KEY_UP 72
// #define KEY_DOWN 80
// #define KEY_LEFT 75
// #define KEY_RIGHT 77

int main()
{

    int c = 0;
    while(1)
    {
        c = getch();

        switch(c) {
        case 'w':
            //cout << endl << "Up" << endl;//key up
            printf("up\n");
            break;
        case 's':
            //cout << endl << "Down" << endl;   // key down
            printf("down\n");
            break;
        case 'a':
            //cout << endl << "Left" << endl;  // key left
            printf("left\n");
            break;
        case 'd':
            //cout << endl << "Right" << endl;  // key right
            printf("right\n");
            break;
        default:
            //cout << endl << "null" << endl;  // not arrow
            //printf("none");
            break;
        }

    }

    return 0;
}