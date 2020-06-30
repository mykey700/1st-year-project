# CMake generated Testfile for 
# Source directory: /home/pi/opencv_contrib/modules/xphoto
# Build directory: /home/pi/opencv/build/modules/xphoto
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_perf_xphoto "/home/pi/opencv/build/bin/opencv_perf_xphoto" "--gtest_output=xml:opencv_perf_xphoto.xml")
set_tests_properties(opencv_perf_xphoto PROPERTIES  LABELS "Extra;opencv_xphoto;Performance" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/performance")
add_test(opencv_sanity_xphoto "/home/pi/opencv/build/bin/opencv_perf_xphoto" "--gtest_output=xml:opencv_perf_xphoto.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_xphoto PROPERTIES  LABELS "Extra;opencv_xphoto;Sanity" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/sanity")
