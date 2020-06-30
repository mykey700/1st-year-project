# Install script for directory: /home/pi/opencv/samples/dnn

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/dnn" TYPE FILE FILES
    "/home/pi/opencv/samples/dnn/classification.cpp"
    "/home/pi/opencv/samples/dnn/colorization.cpp"
    "/home/pi/opencv/samples/dnn/object_detection.cpp"
    "/home/pi/opencv/samples/dnn/openpose.cpp"
    "/home/pi/opencv/samples/dnn/segmentation.cpp"
    "/home/pi/opencv/samples/dnn/text_detection.cpp"
    "/home/pi/opencv/samples/dnn/common.hpp"
    "/home/pi/opencv/samples/dnn/custom_layers.hpp"
    "/home/pi/opencv/samples/dnn/CMakeLists.txt"
    )
endif()

