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
#include <cv.h>


using namespace std;
using namespace cv;

Mat LineFollowFunction(Mat image);

int main()
{
    cout << "Built with OpenCV " << CV_VERSION << endl;
    Mat image;
    VideoCapture capture;
    capture.open(0);
    if(capture.isOpened())
    {
        cout << "Capture is opened" << endl;
        for(;;)
        {
            capture >> image;
            if(image.empty())
                break;
            LineFollowFunction(image);
            // imshow("Sample", image);
            if(waitKey(10) >= 0)
                break;
        }
    }
    else
    {
        cout << "No capture" << endl;
        image = Mat::zeros(480, 640, CV_8UC1);
        //drawText(image);
        imshow("Sample", image);
        waitKey(0);
    }
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

    /*
        //Gaussian Blur is added
        GaussianBlur(StreamGrayscale, StreamBlurred, Size(5,5),0);
        //namedWindow ("Stream Blurred", CV_WINDOW_FREERATIO);
        //imshow("Stream Blurred", StreamBlurred);
    */

    //Threashold the stream
    Mat StreamThresholded;
    threshold(StreamGrayscale, StreamThresholded, 60, 255, THRESH_BINARY_INV);
    //threshold(StreamBlurred, StreamThresholded, 60, 255, THRESH_BINARY_INV);
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


    // imshow("Contoured", StreamContoured);





    //Bodge Below:

    //Thresholded Dimensions

    cv::Size ThresholdDimensions  = StreamThresholded.size();
    int ThreasholdWidth = ThresholdDimensions.width;
    int ThreasholdHight = ThresholdDimensions.height;

    int LeftCrop    = ThreasholdWidth / 3;
    int RightCrop   = (2 * (ThreasholdWidth / 3));



    //Left side
    Mat LeftStream;
    Mat LeftStreamOutput;
    int LeftStreamCount;


    LeftStream = StreamThresholded(Rect(0, 0, LeftCrop, ThreasholdHight));
    // imshow("Left", LeftStream);
    inRange(LeftStream, Scalar(150), Scalar(255), LeftStreamOutput);
    LeftStreamCount = countNonZero(LeftStreamOutput);
//    printf("Left: %d\n", LeftStreamCount);
//   imshow("LeftEnd", LeftStreamOutput);


    //Centre
    Mat CentreStream;
    Mat CentreStreamOutput;
    int CentreStreamCount;
    CentreStream = StreamThresholded(Rect(LeftCrop, 0, LeftCrop, ThreasholdHight));
    inRange(CentreStream, Scalar(150), Scalar(255), CentreStreamOutput);
    CentreStreamCount = countNonZero(CentreStreamOutput);
    //  printf("Centre: %d\n", CentreStreamCount);

    //Right side
    Mat RightStream;
    Mat RightStreamOutput;
    int RightStreamCount;
    RightStream = StreamThresholded(Rect(RightCrop, 0, LeftCrop, ThreasholdHight));
    inRange(RightStream, Scalar(150), Scalar(255), RightStreamOutput);
    RightStreamCount = countNonZero(RightStreamOutput);
    //  printf("Right: %d\n", RightStreamCount);



    //Comparison
    if(CentreStreamCount > LeftStreamCount && CentreStreamCount > RightStreamCount)
    {
        printf("Forwards\n");
        system("./control_2 f -s 15");
    }

    if(RightStreamCount > LeftStreamCount && RightStreamCount > CentreStreamCount)
    {
        printf("Turn Right\n");
        system("./control_2 r -s 15");
    }

    if(LeftStreamCount > CentreStreamCount && LeftStreamCount > RightStreamCount)
    {
        printf("Turn Left\n");
        system("./control_2 l -s 15");
    }

    if(LeftStreamCount == 0 && CentreStreamCount == 0 && RightStreamCount == 0)
    {
        printf("Stop\n");
        system("./control_2 f -s 0");
    }


    return (StreamCropped);
}
