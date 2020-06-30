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

int count_shapes(Mat img);

Mat get_img(Mat img);


Mat transformPerspective(std::vector<Point> boundingContour, Mat frame, int x_size, int y_size);
Point findContourCentre(std::vector<cv::Point> contour);
float compareImages(Mat cameraImage, Mat librarySymbol);


void drawText(Mat & image, String text);

//int main()
// {
//     cout << "Built with OpenCV " << CV_VERSION << endl;
//     Mat image;
//     VideoCapture capture;
//     capture.open(0);
//     if(capture.isOpened())
//     {
//         cout << "Capture is opened" << endl;
//         for(;;)
//         {
//             capture >> image;
//             if(image.empty()){
//                 break;
//             }       
//             int shapes = count_shapes(image);
//             string print = "num: " + to_string(shapes);
//             drawText(image, print);
            
//             imshow("Sample", image);
//             if(waitKey(10) >= 0)
//                 break;
//         }
//     }
//     else
//     {
//         cout << "No capture" << endl;
//         image = Mat::zeros(480, 640, CV_8UC1);
//         drawText(image,"hello");
//         imshow("Sample", image);
//         waitKey(0);
//     }

//     return 0;
// }

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
    namedWindow("Display Image", WINDOW_AUTOSIZE );

    int shapes = count_shapes(image);
    string print = "num: " + to_string(shapes);
    drawText(image, print);
    imshow("Display Image", image);
    waitKey(0);
    return 0;
}

int count_shapes(Mat img){

    cv::Size img_sz = img.size();
    int imageWidth = img_sz.width;
    int imageHeight = img_sz.height;

    //printf("@ count_shapes: image: height: %d\t width: %d\n",imageWidth,imageHeight);


    Mat image = get_img(img);

    img_sz = image.size();
    imageWidth = img_sz.width;
    imageHeight = img_sz.height;

    //printf("@ count_shapes2: image: height: %d\t width: %d\n",imageWidth,imageHeight);

    //image = Mat::zeros(240, 320, CV_8UC3);

    Mat img_shapes;       // Convert the frame to HSV and apply the limits
    cvtColor(image, img_shapes, COLOR_BGR2HSV);
    int low_hue = 150, high_hue = 180;
    inRange(img_shapes, Scalar(low_hue, 70, 80), Scalar(high_hue, (230), (255) ), img_shapes);

    imshow("shapes only" , img_shapes);

    std::vector<std::vector<cv::Point>>contours;// Variable for list of contours
    std::vector<Vec4i>hierarchy;// Variable for image topology data
    cv::findContours(img_shapes,contours,hierarchy,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE,Point(0,0));// Calculate the contours and store them

    for(int i =0;i < contours.size();i++)// Loop through the contours
    {
        drawContours(image,contours,i,Scalar(0,0,255),2,LINE_8,noArray(),0,Point());// Draw each in red
    }

    if(contours.size() < 1){
        return 0;
    }

    std::vector<std::vector<cv::Point>>approxedcontours(contours.size());// Array for new contours

    for(int i=0;i<contours.size();i++){
        cv::approxPolyDP(contours[i],approxedcontours[i],10,true);// Approximate the contour
    }

    int num =0;

    for(int i =0;i <contours.size();i++)// Loop through the contours
    {
        drawContours(image,approxedcontours,i,Scalar(0,255,0),2,LINE_8,noArray(),0,Point());// Draw each in green
        if(approxedcontours[i].size() >= 3){
            num++;
        }
    }

    //printf("num:%d\n",num);

    imshow("shapes_contored" , image);

    return num;

}

Mat get_img(Mat img){


    cv::Size img_sz = img.size();
    int imageWidth = img_sz.width;
    int imageHeight = img_sz.height;

    //printf("@get_image: image: height: %d\t width: %d\n",imageWidth,imageHeight);

    Mat imgHSV;       // Convert the frame to HSV and apply the limits
    cvtColor(img, imgHSV, COLOR_BGR2HSV);
    int low_hue = 100, high_hue = 130;
    inRange(imgHSV, Scalar(low_hue, 70, 80), Scalar(high_hue, (230), (255) ), imgHSV);

    imshow("blue cam",imgHSV);

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

    std::vector<std::vector<cv::Point>>approxedcontours(contours.size());// Array for new contours

    for(int i=0;i<contours.size();i++){
        cv::approxPolyDP(contours[i],approxedcontours[i],30,true);// Approximate the contour
    }

    for(int i =0;i <contours.size();i++)// Loop through the contours
    {
        drawContours(img,approxedcontours,i,Scalar(0,255,0),2,LINE_8,noArray(),0,Point());// Draw each in green
    }

    int max_area =0, max_index = 0,area =0;


    for(int i =0;i <approxedcontours.size();i++)// Loop through the contours
    {
        area = contourArea(approxedcontours[i]);
        if (area > max_area){
            max_area = area;
            max_index = i;
        }
    }

    //int corners =  approxedcontours[max_index].size();

    //printf("corners:%d",corners);

    if (approxedcontours[max_index].size() != 4){
        Mat symb = Mat::zeros(240, 320, CV_8UC3);
        //imshow("board", symb);
        return symb; 
    }

    Mat symb = transformPerspective(approxedcontours[max_index],img,320,240);

    //imshow("cam",img);
    //imshow("board", symb);


    return symb;

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



void drawText(Mat & image, String text)
{
    putText(image, text,
            Point(20, 50),
            FONT_HERSHEY_COMPLEX, 1, // font face and scale
            Scalar(255, 255, 255), // white
            1, LINE_AA); // line thickness and type
}
