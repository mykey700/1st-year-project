#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <iostream>
#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"

using namespace cv;
using std::string;
using std::cout;
using std::endl;

string mostCommonColor(Mat picture,int sat_tol, int val_tol);

int numPixels(Mat img,int low_hue,int high_hue,int sat_tol,int val_tol);

int main( int argc, char* argv[] )
{
    if(argc < 2){
        cout << "Could not open or find the image!\n" << endl;
        cout << "Usage: " << argv[0] << " <Input image>" << endl;
        return -1;
    } 

    CommandLineParser parser( argc, argv, "{@input | image.bmp | input image}" );
    Mat src = imread( samples::findFile( parser.get<String>( "@input" ) ) );

    if ( src.empty() ){
        cout << "Could not open or find the image!\n" << endl;
        cout << "Usage: " << argv[0] << " <Input image>" << endl;
        return -1;
    }

    /* Set Region of Interest */
    
    printf("w:%d\th:%d\n", src.size().width, src.size().height);

    int offset_x = src.size().width /4 ;
    int offset_y = src.size().height /4 + 20;

    cv::Rect roi;
    roi.x = offset_x;
    roi.y = offset_y;
    roi.width = src.size().width /2 ;
    roi.height = src.size().height / 2 ;

    /* Crop the original image to the defined ROI */


    Mat crop = src(roi);

    printf(" most common color: %s\n",mostCommonColor(crop,10,10).c_str());
    
    imshow("getColor", src);
    //imshow("getColorcrop", crop);    

    waitKey();
    return 0;
}

string mostCommonColor(Mat src,int sat_tol, int val_tol){

    int pix[7];
    string colors[] = {"red","orange","yellow","green","cyan","blue","magenta"};

    //total
    int pix_total = numPixels(src,0,180,sat_tol,val_tol);

    printf("total: %d\n",pix_total);

    //red   0 - 15 & 160 - 0 
    int red_pix = numPixels(src,1,15,sat_tol,val_tol) + numPixels(src,161,0,sat_tol,val_tol);

    printf("Red: %d\n",red_pix);
    pix[0] = red_pix;

    //orange    15 - 25 
    int orange_pix = numPixels(src,16,25,sat_tol,val_tol);

    printf("orange: %d\n",orange_pix);
    pix[1] = orange_pix;

    //yellow    25 - 35 
    int yellow_pix = numPixels(src,26,35,sat_tol,val_tol);

    printf("Yellow: %d\n",yellow_pix);
    pix[2] = yellow_pix;

    //green     35 - 80
    int green_pix = numPixels(src,36,80,sat_tol,val_tol);

    printf("Green: %d\n",green_pix);
    pix[3] = green_pix;

    //cyan      90 - 100
    int cyan_pix = numPixels(src,91,100,sat_tol,val_tol);

    printf("Cyan: %d\n",cyan_pix);
    pix[4] = cyan_pix;

    //blue      100 - 130
    int blue_pix = numPixels(src,101,130,sat_tol,val_tol);

    printf("Blue: %d\n",blue_pix);
    pix[5] = blue_pix;

    //magenta   130- 160
    int magenta_pix = numPixels(src,131,160,sat_tol,val_tol);

    printf("Magenta: %d\n",magenta_pix);
    pix[6] = magenta_pix;


    int max_pix = 0, max_index = 0;

    for (int i = 0; i < 7; i++)
    {
        if(pix[i] > max_pix){
            printf("value of %d is bigger than value of %d:\t",i,max_index);
            printf("%d is bigger than %d\n",pix[i],max_pix);
            max_pix = pix[i];
            max_index = i;
        }
    }

    //printf("MCC:%s\n",colors[max_index].c_str());

    return colors[max_index];
    
}

int numPixels(Mat img,int low_hue,int high_hue,int sat_tol,int val_tol){

    Mat frameHSV;       // Convert the frame to HSV and apply the limits
    cvtColor(frame, frameHSV, COLOR_BGR2HSV);
    inRange(frameHSV, Scalar(low_hue, sat_tol, val_tol), Scalar(high_hue, (255 - sat_tol)), (255 - val_tol)), frameHSV);

    int pixels = 0;

    pixels = countNonZero(frameHSV);

    return pixels;

}

