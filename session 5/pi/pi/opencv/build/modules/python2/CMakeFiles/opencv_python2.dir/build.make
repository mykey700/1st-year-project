# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/opencv/build

# Include any dependencies generated for this target.
include modules/python2/CMakeFiles/opencv_python2.dir/depend.make

# Include the progress variables for this target.
include modules/python2/CMakeFiles/opencv_python2.dir/progress.make

# Include the compile flags for this target's objects.
include modules/python2/CMakeFiles/opencv_python2.dir/flags.make

modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o: modules/python2/CMakeFiles/opencv_python2.dir/flags.make
modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o: ../modules/python/src2/cv2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o"
	cd /home/pi/opencv/build/modules/python2 && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o -c /home/pi/opencv/modules/python/src2/cv2.cpp

modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.i"
	cd /home/pi/opencv/build/modules/python2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/opencv/modules/python/src2/cv2.cpp > CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.i

modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.s"
	cd /home/pi/opencv/build/modules/python2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/opencv/modules/python/src2/cv2.cpp -o CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.s

modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.requires:

.PHONY : modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.requires

modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.provides: modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.requires
	$(MAKE) -f modules/python2/CMakeFiles/opencv_python2.dir/build.make modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.provides.build
.PHONY : modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.provides

modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.provides.build: modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o


# Object files for target opencv_python2
opencv_python2_OBJECTS = \
"CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o"

# External object files for target opencv_python2
opencv_python2_EXTERNAL_OBJECTS =

lib/cv2.so: modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o
lib/cv2.so: modules/python2/CMakeFiles/opencv_python2.dir/build.make
lib/cv2.so: lib/libopencv_reg.so.4.0.1
lib/cv2.so: lib/libopencv_surface_matching.so.4.0.1
lib/cv2.so: lib/libopencv_xphoto.so.4.0.1
lib/cv2.so: lib/libopencv_freetype.so.4.0.1
lib/cv2.so: lib/libopencv_fuzzy.so.4.0.1
lib/cv2.so: lib/libopencv_hfs.so.4.0.1
lib/cv2.so: lib/libopencv_img_hash.so.4.0.1
lib/cv2.so: lib/libopencv_bioinspired.so.4.0.1
lib/cv2.so: lib/libopencv_line_descriptor.so.4.0.1
lib/cv2.so: lib/libopencv_saliency.so.4.0.1
lib/cv2.so: lib/libopencv_ccalib.so.4.0.1
lib/cv2.so: lib/libopencv_rgbd.so.4.0.1
lib/cv2.so: lib/libopencv_structured_light.so.4.0.1
lib/cv2.so: lib/libopencv_videostab.so.4.0.1
lib/cv2.so: lib/libopencv_xobjdetect.so.4.0.1
lib/cv2.so: lib/libopencv_aruco.so.4.0.1
lib/cv2.so: lib/libopencv_bgsegm.so.4.0.1
lib/cv2.so: lib/libopencv_dpm.so.4.0.1
lib/cv2.so: lib/libopencv_face.so.4.0.1
lib/cv2.so: lib/libopencv_stitching.so.4.0.1
lib/cv2.so: lib/libopencv_superres.so.4.0.1
lib/cv2.so: lib/libopencv_tracking.so.4.0.1
lib/cv2.so: lib/libopencv_phase_unwrapping.so.4.0.1
lib/cv2.so: lib/libopencv_photo.so.4.0.1
lib/cv2.so: lib/libopencv_objdetect.so.4.0.1
lib/cv2.so: lib/libopencv_xfeatures2d.so.4.0.1
lib/cv2.so: lib/libopencv_shape.so.4.0.1
lib/cv2.so: lib/libopencv_optflow.so.4.0.1
lib/cv2.so: lib/libopencv_ximgproc.so.4.0.1
lib/cv2.so: lib/libopencv_plot.so.4.0.1
lib/cv2.so: lib/libopencv_datasets.so.4.0.1
lib/cv2.so: lib/libopencv_text.so.4.0.1
lib/cv2.so: lib/libopencv_ml.so.4.0.1
lib/cv2.so: lib/libopencv_dnn.so.4.0.1
lib/cv2.so: lib/libopencv_video.so.4.0.1
lib/cv2.so: lib/libopencv_calib3d.so.4.0.1
lib/cv2.so: lib/libopencv_features2d.so.4.0.1
lib/cv2.so: lib/libopencv_flann.so.4.0.1
lib/cv2.so: lib/libopencv_highgui.so.4.0.1
lib/cv2.so: lib/libopencv_videoio.so.4.0.1
lib/cv2.so: lib/libopencv_imgcodecs.so.4.0.1
lib/cv2.so: lib/libopencv_imgproc.so.4.0.1
lib/cv2.so: lib/libopencv_core.so.4.0.1
lib/cv2.so: modules/python2/CMakeFiles/opencv_python2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module ../../lib/cv2.so"
	cd /home/pi/opencv/build/modules/python2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_python2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/python2/CMakeFiles/opencv_python2.dir/build: lib/cv2.so

.PHONY : modules/python2/CMakeFiles/opencv_python2.dir/build

modules/python2/CMakeFiles/opencv_python2.dir/requires: modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o.requires

.PHONY : modules/python2/CMakeFiles/opencv_python2.dir/requires

modules/python2/CMakeFiles/opencv_python2.dir/clean:
	cd /home/pi/opencv/build/modules/python2 && $(CMAKE_COMMAND) -P CMakeFiles/opencv_python2.dir/cmake_clean.cmake
.PHONY : modules/python2/CMakeFiles/opencv_python2.dir/clean

modules/python2/CMakeFiles/opencv_python2.dir/depend:
	cd /home/pi/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/opencv /home/pi/opencv/modules/python/python2 /home/pi/opencv/build /home/pi/opencv/build/modules/python2 /home/pi/opencv/build/modules/python2/CMakeFiles/opencv_python2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/python2/CMakeFiles/opencv_python2.dir/depend

