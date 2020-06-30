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
include modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/depend.make

# Include the progress variables for this target.
include modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/progress.make

# Include the compile flags for this target's objects.
include modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o: ../modules/calib3d/perf/opencl/perf_stereobm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -o CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o -c /home/pi/opencv/modules/calib3d/perf/opencl/perf_stereobm.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.i"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -E /home/pi/opencv/modules/calib3d/perf/opencl/perf_stereobm.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.s"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -S /home/pi/opencv/modules/calib3d/perf/opencl/perf_stereobm.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.requires:

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o


modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o: ../modules/calib3d/perf/perf_affine2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o -c /home/pi/opencv/modules/calib3d/perf/perf_affine2d.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.i"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -E /home/pi/opencv/modules/calib3d/perf/perf_affine2d.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.s"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -S /home/pi/opencv/modules/calib3d/perf/perf_affine2d.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.requires:

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o


modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o: ../modules/calib3d/perf/perf_cicrlesGrid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o -c /home/pi/opencv/modules/calib3d/perf/perf_cicrlesGrid.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.i"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -E /home/pi/opencv/modules/calib3d/perf/perf_cicrlesGrid.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.s"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -S /home/pi/opencv/modules/calib3d/perf/perf_cicrlesGrid.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires:

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o


modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o: ../modules/calib3d/perf/perf_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o -c /home/pi/opencv/modules/calib3d/perf/perf_main.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.i"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -E /home/pi/opencv/modules/calib3d/perf/perf_main.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.s"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -S /home/pi/opencv/modules/calib3d/perf/perf_main.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires:

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o


modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o: ../modules/calib3d/perf/perf_pnp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o -c /home/pi/opencv/modules/calib3d/perf/perf_pnp.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.i"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -E /home/pi/opencv/modules/calib3d/perf/perf_pnp.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.s"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -S /home/pi/opencv/modules/calib3d/perf/perf_pnp.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires:

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o


modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o: ../modules/calib3d/perf/perf_stereosgbm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o -c /home/pi/opencv/modules/calib3d/perf/perf_stereosgbm.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.i"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -E /home/pi/opencv/modules/calib3d/perf/perf_stereosgbm.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.s"
	cd /home/pi/opencv/build/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "/home/pi/opencv/build/modules/calib3d/perf_precomp.hpp" -S /home/pi/opencv/modules/calib3d/perf/perf_stereosgbm.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.requires:

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o


# Object files for target opencv_perf_calib3d
opencv_perf_calib3d_OBJECTS = \
"CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o"

# External object files for target opencv_perf_calib3d
opencv_perf_calib3d_EXTERNAL_OBJECTS =

bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make
bin/opencv_perf_calib3d: lib/libopencv_ts.a
bin/opencv_perf_calib3d: lib/libopencv_calib3d.so.4.0.1
bin/opencv_perf_calib3d: lib/libopencv_features2d.so.4.0.1
bin/opencv_perf_calib3d: 3rdparty/lib/libtegra_hal.a
bin/opencv_perf_calib3d: lib/libopencv_flann.so.4.0.1
bin/opencv_perf_calib3d: lib/libopencv_highgui.so.4.0.1
bin/opencv_perf_calib3d: lib/libopencv_videoio.so.4.0.1
bin/opencv_perf_calib3d: lib/libopencv_imgcodecs.so.4.0.1
bin/opencv_perf_calib3d: lib/libopencv_imgproc.so.4.0.1
bin/opencv_perf_calib3d: lib/libopencv_core.so.4.0.1
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../../bin/opencv_perf_calib3d"
	cd /home/pi/opencv/build/modules/calib3d && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_perf_calib3d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build: bin/opencv_perf_calib3d

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/opencl/perf_stereobm.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_affine2d.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_stereosgbm.cpp.o.requires

.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/clean:
	cd /home/pi/opencv/build/modules/calib3d && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_calib3d.dir/cmake_clean.cmake
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/clean

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/depend:
	cd /home/pi/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/opencv /home/pi/opencv/modules/calib3d /home/pi/opencv/build /home/pi/opencv/build/modules/calib3d /home/pi/opencv/build/modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/depend

