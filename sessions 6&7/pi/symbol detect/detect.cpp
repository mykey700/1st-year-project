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

String get_symbol(Mat img);

Mat get_img(Mat img);


Mat transformPerspective(std::vector<Point> boundingContour, Mat frame, int x_size, int y_size);
Point findContourCentre(std::vector<cv::Point> contour);
float compareImages(Mat cameraImage, Mat librarySymbol);


void drawText(Mat & image, String text);

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
            if(image.empty()){
                break;
            }       
            String symbol = get_symbol(image);
            drawText(image,symbol);
            
            imshow("Sample", image);
            if(waitKey(10) >= 0)
                break;
        }
    }
    else
    {
        cout << "No capture" << endl;
        image = Mat::zeros(480, 640, CV_8UC1);
        drawText(image,"hello");
        imshow("Sample", image);
        waitKey(0);
    }
    return 0;
}

String get_symbol(Mat img){
    Mat image = get_img(img);

    string dir = "symbols";
     vector<string> files = vector<string>();

    DIR *dp;
    struct dirent *dirp;
    if((dp  = opendir(dir.c_str())) == NULL) {
        cout << "Error(" << errno << ") opening " << dir << endl;
        return "Error";
    }
    string temp;

    while ((dirp = readdir(dp)) != NULL) {
        temp = dirp->d_name;
        if(temp.find(".PNG") != std::string::npos){
            files.push_back(string(dirp->d_name));
        }
    }
    closedir(dp);

    Mat symbol;

    float max_certanty =0,certanty;
    int most_certain_file = 0;

    for (unsigned int i = 0;i < files.size();i++) {
        //cout << files[i] << endl;

        String symbol_file = "symbols/" + files[i];

        symbol = imread(symbol_file,1);

        cv::Size img_sz = image.size();
        int imageWidth = img_sz.width;
        int imageHeight = img_sz.height;

        cv::Size sym_sz = symbol.size();
        int symWidth = sym_sz.width;
        int symHeight = sym_sz.height;

        //printf("image: height: %d\t width: %d\n",imageWidth,imageHeight);
        //printf("symbol [%s]: height: %d\t width: %d\n",symbol_file.c_str() ,symWidth,symHeight);

        if(imageWidth > 0 && symWidth > 0 && imageHeight > 0 && symHeight > 0){

            Mat image_BW;       // Convert the frame to HSV and apply the limits
            cvtColor(image, image_BW, COLOR_BGR2HSV);
            int low_hue = 150, high_hue = 180;
            inRange(image_BW, Scalar(low_hue, 70, 80), Scalar(high_hue, (230), (255) ), image_BW);

            Mat kernel=cv::getStructuringElement(MORPH_ELLIPSE,Size(5,5));
            cv::morphologyEx(image_BW,image_BW,MORPH_CLOSE,kernel);

            Mat symbol_BW;       // Convert the frame to HSV and apply the limits
            cvtColor(symbol, symbol_BW, COLOR_BGR2HSV);
            low_hue = 150, high_hue = 180;
            inRange(symbol_BW, Scalar(low_hue, 0, 0), Scalar(high_hue, (255), (255) ), symbol_BW);

            certanty  = compareImages(image_BW,symbol_BW);

            if(certanty > max_certanty){
                max_certanty = certanty;
                most_certain_file = i;
            } 

            //imshow("BW symb",symbol_BW);
            //imshow("BW img",image_BW);

        }
    }

    if(max_certanty < 50){
        return "none";
    }

    String returnd = files[most_certain_file];

    return returnd;

}

Mat get_img(Mat img){
    Mat imgHSV;       // Convert the frame to HSV and apply the limits
    cvtColor(img, imgHSV, COLOR_BGR2HSV);
    int low_hue = 150, high_hue = 180;
    inRange(imgHSV, Scalar(low_hue, 70, 80), Scalar(high_hue, (230), (255) ), imgHSV);

    //imshow("pink cam",imgHSV);

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



    Mat symb = transformPerspective(approxedcontours[max_index],img,320,240);

    // cv::Rect roi;   


    // roi.x = boundingRect(approxedcontours[max_index]).x;
    // roi.y = boundingRect(approxedcontours[max_index]).y;
    // roi.width = boundingRect(approxedcontours[max_index]).width;
    // roi.height = boundingRect(approxedcontours[max_index]).height;
    
    // Mat crop = img(roi);

    //printf("corners:%d",approxedcontours[max_index].size());

    //printf("contors:%d\n",approxedcontours.size());

    //imshow("cam",img);
    //imshow("cam bw",imgSmooth);
    //imshow("shift cam",symb);   

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
