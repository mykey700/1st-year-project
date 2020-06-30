#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"

#include <sys/types.h>
#include <dirent.h>
#include <errno.h>
#include <vector>
#include <string>
#include <iostream>


using namespace cv;
using namespace std;


Mat get_img(Mat img, int hue);

int numPixels(Mat img,int low_hue,int high_hue,int low_sat,int high_sat,int low_val,int high_val);



Mat transformPerspective(std::vector<Point> boundingContour, Mat frame, int x_size, int y_size);
Point findContourCentre(std::vector<cv::Point> contour);
float compareImages(Mat cameraImage, Mat librarySymbol);

void drawText(Mat & image, String text);

int main(int argc, char** argv )
{
    if ( argc != 2 )
    {
        printf("usage: DisplayImage.out <Image_Path>\n");
        return -1;
    }
    Mat image;
    image = imread( argv[1], 1 );
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }

    Mat green_light =  get_img(image , 60);
    Mat red_light = get_img(image, 170);

    int green_bright = numPixels(green_light, 0, 180, 0, 255, 200, 255);
    int red_bright = numPixels(red_light, 0, 180, 0, 255, 200, 255);

    if (green_bright > red_bright)
    {
        drawText(image,"GREEN");
    }else if (green_bright < red_bright)
    {
        drawText(image,"RED");
    }else
    {
        drawText(image,"NEITHER");
    }
    
    imshow("Display Image", image);

    imshow("green Image", green_light);
    imshow("red Image", red_light);

    waitKey(0);
    return 0;
}


Mat get_img(Mat img, int hue )
{

    cv::Size img_sz = img.size();
    int imageWidth = img_sz.width;
    int imageHeight = img_sz.height;

    int upper_hue = (hue - 20), lower_hue = (hue + 20);

    Mat imgHSV;       // Convert the frame to HSV and apply the limits
    cvtColor(img, imgHSV, COLOR_BGR2HSV);
    inRange(imgHSV, Scalar(upper_hue, 130, 90), Scalar(lower_hue, 255, 255), imgHSV);

    //imshow("green cam",imgHSV);

    Mat imgSmooth;

    Mat kernel=cv::getStructuringElement(MORPH_ELLIPSE,Size(5,5));
    cv::morphologyEx(imgHSV,imgSmooth,MORPH_CLOSE,kernel);

    //imshow("smooth cam",imgSmooth);

    std::vector<std::vector<cv::Point>>contours;// Variable for list of contours
    std::vector<Vec4i>hierarchy;// Variable for image topology data
    cv::findContours(imgSmooth,contours,hierarchy,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE,Point(0,0));// Calculate the contours and store them

    if (contours.size() < 1){
        Mat symb = Mat::zeros(240, 320, CV_8UC3);
        return symb; 
    }
        

    for(int i =0;i < contours.size();i++)// Loop through the contours
    {
        drawContours(img,contours,i,Scalar(0,0,255),2,LINE_8,noArray(),0,Point());// Draw each in red
    }

    int max_area =0, max_index = 0,area =0;


    for(int i =0;i <contours.size();i++)// Loop through the contours
    {
        area = contourArea(contours[i]);
        if (area > max_area){
            max_area = area;
            max_index = i;
        }
    }

    Rect boundRect;

    boundRect = boundingRect( contours[max_index] );


    Mat image_roi = img(boundRect);


    return image_roi;

}

Mat transformPerspective(std::vector<Point> boundingContour, Mat frame, int x_size, int y_size)
{
    if(boundingContour.size() != 4)
    {
        // Error the contour has too many points. Only 4 are allowed
        Mat emptyMat;
        return emptyMat;
    }

    Mat symbol(y_size,x_size,CV_8UC1, Scalar(0));

    Point2f symbolCorners[4], boundingCorners[4];      // Create (and populate) variables containing the corner locations for the transform
    symbolCorners[0] = Point2f(0,0);
    symbolCorners[1] = Point2f(symbol.cols - 1,0);
    symbolCorners[2] = Point2f(symbol.cols - 1,symbol.rows - 1);
    symbolCorners[3] = Point2f(0,symbol.rows - 1);

    Point contourCentre = findContourCentre(boundingContour);   // To populate the contour corners we need to check the order of the points

    int point1, point2, point3, point4;

    if(boundingContour[0].x > contourCentre.x)
    {
        if(boundingContour[0].y > contourCentre.y)
            point3 = 0;
        else
            point2 = 0;
    }
    else
    {
        if(boundingContour[0].y > contourCentre.y)
            point4 = 0;
        else
            point1 = 0;
    }

    if(boundingContour[1].x > contourCentre.x)
    {
        if(boundingContour[1].y > contourCentre.y)
            point3 = 1;
        else
            point2 = 1;
    }
    else
    {
        if(boundingContour[1].y > contourCentre.y)
            point4 = 1;
        else
            point1 = 1;
    }

    if(boundingContour[2].x > contourCentre.x)
    {
        if(boundingContour[2].y > contourCentre.y)
            point3 = 2;
        else
            point2 = 2;
    }
    else
    {
        if(boundingContour[2].y > contourCentre.y)
            point4 = 2;
        else
            point1 = 2;
    }

    if(boundingContour[3].x > contourCentre.x)
    {
        if(boundingContour[3].y > contourCentre.y)
            point3 = 3;
        else
            point2 = 3;
    }
    else
    {
        if(boundingContour[3].y > contourCentre.y)
            point4 = 3;
        else
            point1 = 3;
    }

    if(point1 + point2 + point3 + point4 != 6)
    {
        //Unable to reconstruct rectangle
        Mat emptyMat;
        return emptyMat;
    }

    boundingCorners[0] = boundingContour[point1];
    boundingCorners[1] = boundingContour[point2];
    boundingCorners[2] = boundingContour[point3];
    boundingCorners[3] = boundingContour[point4];

    Mat transformMatrix = cv::getPerspectiveTransform(boundingCorners, symbolCorners); // Calculate the required transform operation
    Mat transformedSymbol(240,320,CV_8UC1,Scalar(0));
    warpPerspective(frame, transformedSymbol, transformMatrix, cv::Size(symbol.cols,symbol.rows));  // Perform the transformation

    return transformedSymbol;
}

Point findContourCentre(std::vector<cv::Point> contour)
{
    Moments foundRegion;    // Variables to store the region moment and the centre point
    Point centre;
    foundRegion = moments(contour, false);      // Calculate the moment for the contour
    centre.x = (foundRegion.m10/foundRegion.m00);  //Calculate the X and Y positions
    centre.y = (foundRegion.m01/foundRegion.m00);

    return centre;
}

float compareImages(Mat cameraImage, Mat librarySymbol)
{
    float matchPercent = 100 - (100/((float)librarySymbol.cols*(float)librarySymbol.rows) * (2*(float)countNonZero(librarySymbol^cameraImage))); // An incorrect pixel has double weighting
    return matchPercent;
}

int numPixels(Mat img,int low_hue,int high_hue,int low_sat,int high_sat,int low_val,int high_val)
{

    Mat frameHSV;       // Convert the frame to HSV and apply the limits
    cvtColor(img, frameHSV, COLOR_BGR2HSV);
    inRange(frameHSV, Scalar(low_hue, low_sat, low_val), Scalar(high_hue, high_sat, high_val), frameHSV);

    int pixels = 0;

    pixels = countNonZero(frameHSV);

    return pixels;

}

void drawText(Mat & image, String text)
{
    putText(image, text,
            Point(20, 50),
            FONT_HERSHEY_COMPLEX, 1, // font face and scale
            Scalar(0, 0, 0), // white
            1, LINE_AA); // line thickness and type
    putText(image, text,
            Point(20, 100),
            FONT_HERSHEY_COMPLEX, 1, // font face and scale
            Scalar(255, 255, 255), // white
            1, LINE_AA); // line thickness and type
}
