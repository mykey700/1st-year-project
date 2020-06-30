//EEEE1002 Bench 41 2019/20

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


using namespace std;
using namespace cv;

Mat LineFollowFunction(Mat image);

// int main()
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
//             if(image.empty())
//                 break;
//             LineFollowFunction(image);
//             imshow("Sample", image);
//             if(waitKey(10) >= 0)
//                 break;
//         }
//     }
//     else
//     {
//         cout << "No capture" << endl;
//         image = Mat::zeros(480, 640, CV_8UC1);
//         //drawText(image);
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
    LineFollowFunction(image);
    imshow("Display Image", image);
    waitKey(0);
    return 0;
}

Mat LineFollowFunction(Mat image)
{

    //Crop the stream
    Mat StreamCropped;
    cv::Size StreamDimensions  = image.size();
    int StreamWidth = StreamDimensions.width;
    int StreamHeight = StreamDimensions.height;
    StreamCropped = image(Rect(0,(StreamHeight/2),StreamWidth,(StreamHeight/2)));
    //namedWindow ("Cropped Stream", CV_WINDOW_FREERATIO);
    //imshow("Cropped Stream", StreamCropped);


    //Convert to grayscale
    Mat StreamGrayscale;
    Mat StreamBlurred;
    cvtColor(StreamCropped, StreamGrayscale, COLOR_BGR2GRAY);
    //imshow("Stream Grayscale", StreamGrayscale);


    //Gaussian Blur is added
    GaussianBlur(StreamGrayscale, StreamBlurred, Size(5,5),0);
    //namedWindow ("Stream Blurred", CV_WINDOW_FREERATIO);
    //imshow("Stream Blurred", StreamBlurred);


    //Threashold the stream
    Mat StreamThresholded;
    threshold(StreamBlurred, StreamThresholded, 60, 255, THRESH_BINARY_INV);
    //namedWindow ("Stream Thresholded", CV_WINDOW_FREERATIO);
    //imshow("Stream Thresholded", StreamThresholded);


    //Contour the stream
    std::vector<std::vector<cv::Point>>contours;// Variable for list of contours
    std::vector<Vec4i>hierarchy;// Variable for image topology data
    cv::findContours(StreamThresholded,contours,hierarchy,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE,Point(0,0));// Calculate the contours and store them

    /*  if (contours.size() < 1){
          Mat symb = Mat::zeros(240, 320, CV_8UC3);
          return symb;
      } */

    Mat StreamContoured = StreamThresholded;
    for(int i =0; i < contours.size(); i++) // Loop through the contours
    {
        drawContours(StreamContoured,contours,i,Scalar(0,0,255),2,LINE_8,noArray(),0,Point());// Draw each in red
    }


    imshow("Contoured", StreamContoured);





    //Bodge Below:

    //Left side
    Mat LeftStream;
    Mat LeftStreamOutput;
    int LeftStreamCount;
    LeftStream = StreamThresholded(Rect(0,(StreamHeight/2),(StreamWidth/3),(StreamHeight/2)));
    inRange(LeftStream, Scalar(150), Scalar(255), LeftStreamOutput);
    LeftStreamCount = countNonZero(LeftStreamOutput);

    //Centre
    Mat CentreStream;
    Mat CentreStreamOutput;
    int CentreStreamCount;
    CentreStream = StreamThresholded(Rect(0,(StreamHeight/2),(StreamWidth/3),(StreamHeight/2)));
    inRange(CentreStream, Scalar(150), Scalar(255), CentreStreamOutput);
    CentreStreamCount = countNonZero(CentreStreamOutput);

    //Right side
    Mat RightStream;
    Mat RightStreamOutput;
    int RightStreamCount;
    RightStream = StreamThresholded(Rect(0,(StreamHeight/2),(StreamWidth/3),(StreamHeight/2)));
    inRange(RightStream, Scalar(150), Scalar(255), RightStreamOutput);
    RightStreamCount = countNonZero(RightStreamOutput);

    //Comparison
    if(CentreStreamCount > LeftStreamCount && CentreStreamCount > RightStreamCount)
    {
        printf("Forwards\n");
    }

    if(RightStreamCount > LeftStreamCount && RightStreamCount > CentreStreamCount)
    {
        printf("Turn Right\n");
    }

    if(LeftStreamCount > CentreStreamCount && LeftStreamCount > RightStreamCount)
    {
        printf("Turn Left\n");
    }

    return (StreamCropped);
}
