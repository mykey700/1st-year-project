# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# compile CXX with /usr/bin/c++
CXX_FLAGS =    -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Winit-self -Wpointer-arith -Wsign-promo -Wuninitialized -Winit-self -Wsuggest-override -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -mfpu=neon -mfp16-format=ieee -fvisibility=hidden -fvisibility-inlines-hidden -Wno-deprecated -Wno-missing-declarations -Wno-shadow -Wno-unused-parameter -Wno-sign-compare -Wno-invalid-offsetof -Wno-undef -Wno-overloaded-virtual -Wno-shadow -Wno-deprecated-declarations -Wno-deprecated-declarations -Wno-deprecated-declarations -O3 -DNDEBUG  -DNDEBUG -fPIC   -std=c++11

CXX_DEFINES = -DCVAPI_EXPORTS -DCV_OCL4DNN=1 -DHAVE_IMGCODEC_HDR -DHAVE_IMGCODEC_PFM -DHAVE_IMGCODEC_PXM -DHAVE_IMGCODEC_SUNRASTER -DHAVE_PROTOBUF=1 -DHAVE_WEBP -DOPENCV_MODULE_IS_PART_OF_WORLD=1 -D_USE_MATH_DEFINES -D__OPENCV_BUILD=1 -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS

CXX_INCLUDES = -I/home/pi/opencv/3rdparty/quirc/include -I/home/pi/opencv/build/modules/world -I/home/pi/opencv/3rdparty/libjasper -I/home/pi/opencv/3rdparty/libwebp/src -I/home/pi/opencv/build -isystem /usr/include/freetype2 -isystem /usr/include/harfbuzz -isystem /usr/include/glib-2.0 -isystem /usr/lib/arm-linux-gnueabihf/glib-2.0/include -isystem /usr/include/arm-linux-gnueabihf -isystem /home/pi/opencv/3rdparty/openexr/Half -isystem /home/pi/opencv/3rdparty/openexr/Iex -isystem /home/pi/opencv/3rdparty/openexr/IlmThread -isystem /home/pi/opencv/3rdparty/openexr/Imath -isystem /home/pi/opencv/3rdparty/openexr/IlmImf -isystem /usr/include/gtk-3.0 -isystem /usr/include/at-spi2-atk/2.0 -isystem /usr/include/at-spi-2.0 -isystem /usr/include/dbus-1.0 -isystem /usr/lib/arm-linux-gnueabihf/dbus-1.0/include -isystem /usr/include/gio-unix-2.0 -isystem /usr/include/cairo -isystem /usr/include/pango-1.0 -isystem /usr/include/atk-1.0 -isystem /usr/include/pixman-1 -isystem /usr/include/libpng16 -isystem /usr/include/gdk-pixbuf-2.0 -I/home/pi/opencv/modules/core/include -I/home/pi/opencv/3rdparty/include/opencl/1.2 -I/home/pi/opencv/modules/flann/include -I/home/pi/opencv/modules/imgproc/include -I/home/pi/opencv/modules/ml/include -I/home/pi/opencv_contrib/modules/phase_unwrapping/include -I/home/pi/opencv/modules/photo/include -I/home/pi/opencv_contrib/modules/plot/include -I/home/pi/opencv_contrib/modules/reg/include -I/home/pi/opencv_contrib/modules/surface_matching/include -I/home/pi/opencv_contrib/modules/xphoto/include -I/home/pi/opencv/modules/dnn/include -I/home/pi/opencv/modules/dnn/misc/caffe -I/home/pi/opencv/modules/dnn/misc/tensorflow -I/home/pi/opencv/modules/dnn/misc/onnx -I/home/pi/opencv_contrib/modules/freetype/include -I/home/pi/opencv_contrib/modules/fuzzy/include -I/home/pi/opencv/modules/gapi/include -I/home/pi/opencv/modules/gapi/src -I/home/pi/opencv_contrib/modules/hfs/include -I/home/pi/opencv/modules/imgcodecs/include -I/home/pi/opencv/modules/videoio/include -I/home/pi/opencv/modules/highgui/include -I/home/pi/opencv_contrib/modules/bioinspired/include -I/home/pi/opencv_contrib/modules/dnn_objdetect/include -I/home/pi/opencv/modules/features2d/include -I/home/pi/opencv_contrib/modules/line_descriptor/include -I/home/pi/opencv_contrib/modules/saliency/include -I/home/pi/opencv_contrib/modules/text/include -I/home/pi/opencv/modules/calib3d/include -I/home/pi/opencv_contrib/modules/ccalib/include -I/home/pi/opencv_contrib/modules/datasets/include -I/home/pi/opencv/modules/objdetect/include -I/home/pi/opencv_contrib/modules/rgbd/include -I/home/pi/opencv_contrib/modules/shape/include -I/home/pi/opencv_contrib/modules/stereo/include -I/home/pi/opencv_contrib/modules/structured_light/include -I/home/pi/opencv/modules/video/include -I/home/pi/opencv_contrib/modules/videostab/include -I/home/pi/opencv_contrib/modules/xfeatures2d/include -I/home/pi/opencv/build/downloads/xfeatures2d -I/home/pi/opencv_contrib/modules/ximgproc/include -I/home/pi/opencv_contrib/modules/xobjdetect/include -I/home/pi/opencv_contrib/modules/aruco/include -I/home/pi/opencv_contrib/modules/bgsegm/include -I/home/pi/opencv_contrib/modules/dpm/include -I/home/pi/opencv_contrib/modules/face/include -I/home/pi/opencv_contrib/modules/optflow/include -I/home/pi/opencv/modules/stitching/include -I/home/pi/opencv_contrib/modules/superres/include -I/home/pi/opencv_contrib/modules/tracking/include -I/home/pi/opencv/modules/world/include -isystem /home/pi/opencv/3rdparty/protobuf/src -I/home/pi/opencv/build/3rdparty/ade/ade-0.1.1d/sources/ade/include 

# Custom defines: modules/world/CMakeFiles/opencv_world.dir/__/core/src/alloc.cpp.o_DEFINES = HAVE_POSIX_MEMALIGN=1;HAVE_MALLOC_H=1;HAVE_MEMALIGN=1

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/attr_value.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/function.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/graph.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/op_def.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/tensor.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/tensor_shape.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/types.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/tensorflow/versions.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/caffe/opencv-caffe.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/__/dnn/misc/onnx/opencv-onnx.pb.cc.o_FLAGS = -Wno-suggest-override

# Custom flags: modules/world/CMakeFiles/opencv_world.dir/home/pi/opencv_contrib/modules/datasets/src/tinyxml2/tinyxml2.cpp.o_FLAGS = -Wno-suggest-override

