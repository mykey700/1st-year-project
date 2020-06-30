# CMake generated Testfile for 
# Source directory: /home/pi/opencv_contrib/modules/tracking
# Build directory: /home/pi/opencv/build/modules/tracking
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_perf_tracking "/home/pi/opencv/build/bin/opencv_perf_tracking" "--gtest_output=xml:opencv_perf_tracking.xml")
set_tests_properties(opencv_perf_tracking PROPERTIES  LABELS "Extra;opencv_tracking;Performance" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/performance")
add_test(opencv_sanity_tracking "/home/pi/opencv/build/bin/opencv_perf_tracking" "--gtest_output=xml:opencv_perf_tracking.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_tracking PROPERTIES  LABELS "Extra;opencv_tracking;Sanity" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/sanity")
