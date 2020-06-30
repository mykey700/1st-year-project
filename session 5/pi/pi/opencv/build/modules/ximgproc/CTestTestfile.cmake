# CMake generated Testfile for 
# Source directory: /home/pi/opencv_contrib/modules/ximgproc
# Build directory: /home/pi/opencv/build/modules/ximgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_perf_ximgproc "/home/pi/opencv/build/bin/opencv_perf_ximgproc" "--gtest_output=xml:opencv_perf_ximgproc.xml")
set_tests_properties(opencv_perf_ximgproc PROPERTIES  LABELS "Extra;opencv_ximgproc;Performance" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/performance")
add_test(opencv_sanity_ximgproc "/home/pi/opencv/build/bin/opencv_perf_ximgproc" "--gtest_output=xml:opencv_perf_ximgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_ximgproc PROPERTIES  LABELS "Extra;opencv_ximgproc;Sanity" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/sanity")
