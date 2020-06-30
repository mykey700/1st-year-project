# CMake generated Testfile for 
# Source directory: /home/pi/opencv_contrib/modules/bioinspired
# Build directory: /home/pi/opencv/build/modules/bioinspired
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_perf_bioinspired "/home/pi/opencv/build/bin/opencv_perf_bioinspired" "--gtest_output=xml:opencv_perf_bioinspired.xml")
set_tests_properties(opencv_perf_bioinspired PROPERTIES  LABELS "Extra;opencv_bioinspired;Performance" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/performance")
add_test(opencv_sanity_bioinspired "/home/pi/opencv/build/bin/opencv_perf_bioinspired" "--gtest_output=xml:opencv_perf_bioinspired.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_bioinspired PROPERTIES  LABELS "Extra;opencv_bioinspired;Sanity" WORKING_DIRECTORY "/home/pi/opencv/build/test-reports/sanity")
