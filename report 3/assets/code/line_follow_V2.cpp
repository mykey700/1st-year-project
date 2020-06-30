#include <stdio.h>

#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"


using namespace cv;

int line_xval(Mat img);

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
    int value = line_xval(image);
    printf("x_value:%d\n",value);
    imshow("Display Image", image);

    waitKey(0);
    return 0;
}

int line_xval(Mat img){
    //Crop the stream
    Mat StreamCropped;
    cv::Size StreamDimensions  = img.size();
    int StreamWidth = StreamDimensions.width;
    int StreamHeight = StreamDimensions.height;
    StreamCropped = img(Rect(0,(StreamHeight/2),StreamWidth,(StreamHeight/2)));
    //namedWindow ("Cropped Stream", CV_WINDOW_FREERATIO);
    imshow("Cropped Stream", StreamCropped);

    //Convert to grayscale
    Mat StreamGrayscale;
    cvtColor(StreamCropped, StreamGrayscale, COLOR_BGR2GRAY);
    //imshow("Stream Grayscale", StreamGrayscale);


    //Gaussian Blur is added
    Mat StreamBlurred;
    GaussianBlur(StreamGrayscale, StreamBlurred, Size(5,5),0);
    //namedWindow ("Stream Blurred", CV_WINDOW_FREERATIO);
    //imshow("Stream Blurred", StreamBlurred);


    //Threashold the stream
    Mat StreamThresholded;
    threshold(StreamBlurred, StreamThresholded, 100, 255, THRESH_BINARY_INV);
    //namedWindow ("Stream Thresholded", CV_WINDOW_FREERATIO);
    imshow("Stream Thresholded", StreamThresholded);


    //Contour the stream
    std::vector<std::vector<cv::Point>>contours;// Variable for list of contours
    std::vector<Vec4i>hierarchy;// Variable for image topology data
    cv::findContours(StreamThresholded,contours,hierarchy,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE,Point(0,0));// Calculate the contours and store them

    /*  if (contours.size() < 1){
          Mat symb = Mat::zeros(240, 320, CV_8UC3);
          return symb;
      } */

    for(int i =0; i < contours.size(); i++) // Loop through the contours
    {
        drawContours(StreamCropped,contours,i,Scalar(0,0,255),2,LINE_8,noArray(),0,Point());// Draw each in red
    }

    printf("contros:%d\n",contours.size());

    std::vector<std::vector<cv::Point>>approxedcontours(contours.size());// Array for new contours

    for(int i=0;i<contours.size();i++){
        cv::approxPolyDP(contours[i],approxedcontours[i],10,true);// Approximate the contour
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

    printf("corners:%d\n",approxedcontours[max_index].size());

    int x_sum=0;

    cv::Point pt1 = approxedcontours[max_index][1], pt2 = approxedcontours[max_index][2];
    cv::line(StreamCropped, pt1, pt2, cv::Scalar(255, 0, 0), 3, 8, 0);
    x_sum = x_sum + pt1.x + pt2.x;

    printf("red_line: A: x[%d],y[%d] B: x[%d],y[%d]",pt1.x,pt1.y,pt2.x,pt2.y);

    pt1 = approxedcontours[max_index][3]; pt2 = approxedcontours[max_index][0];
    cv::line(StreamCropped, pt1, pt2, cv::Scalar(0, 0 , 255), 3, 8, 0);
    x_sum = x_sum + pt1.x + pt2.x;

    printf("blue_line: A: x[%d],y[%d] B: x[%d],y[%d]",pt1.x,pt1.y,pt2.x,pt2.y);

    int x_avg = x_sum/4; 

    Point img_center; 
    img_center.x = x_avg;
    img_center.y = 230; 

    circle(StreamCropped,img_center,5,cv::Scalar(0, 255 , 0), 1,8,0);
    //circle(StreamCropped,line_center,5,cv::Scalar(0, 255 , 0), 1,8,0);

    printf("total x: %d\n", StreamDimensions.width);
    printf("line x: %d\n", x_avg);

    int x_delta = x_avg - (StreamDimensions.width/2); 


    return x_delta;
}
