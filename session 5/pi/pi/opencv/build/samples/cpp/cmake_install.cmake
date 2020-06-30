# Install script for directory: /home/pi/opencv/samples/cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/cpp" TYPE FILE FILES
    "/home/pi/opencv/samples/cpp/3calibration.cpp"
    "/home/pi/opencv/samples/cpp/application_trace.cpp"
    "/home/pi/opencv/samples/cpp/bgfg_segm.cpp"
    "/home/pi/opencv/samples/cpp/calibration.cpp"
    "/home/pi/opencv/samples/cpp/camshiftdemo.cpp"
    "/home/pi/opencv/samples/cpp/cloning_demo.cpp"
    "/home/pi/opencv/samples/cpp/cloning_gui.cpp"
    "/home/pi/opencv/samples/cpp/connected_components.cpp"
    "/home/pi/opencv/samples/cpp/contours2.cpp"
    "/home/pi/opencv/samples/cpp/convexhull.cpp"
    "/home/pi/opencv/samples/cpp/cout_mat.cpp"
    "/home/pi/opencv/samples/cpp/create_mask.cpp"
    "/home/pi/opencv/samples/cpp/dbt_face_detection.cpp"
    "/home/pi/opencv/samples/cpp/delaunay2.cpp"
    "/home/pi/opencv/samples/cpp/demhist.cpp"
    "/home/pi/opencv/samples/cpp/detect_blob.cpp"
    "/home/pi/opencv/samples/cpp/detect_mser.cpp"
    "/home/pi/opencv/samples/cpp/dft.cpp"
    "/home/pi/opencv/samples/cpp/dis_opticalflow.cpp"
    "/home/pi/opencv/samples/cpp/distrans.cpp"
    "/home/pi/opencv/samples/cpp/drawing.cpp"
    "/home/pi/opencv/samples/cpp/edge.cpp"
    "/home/pi/opencv/samples/cpp/ela.cpp"
    "/home/pi/opencv/samples/cpp/em.cpp"
    "/home/pi/opencv/samples/cpp/facedetect.cpp"
    "/home/pi/opencv/samples/cpp/facial_features.cpp"
    "/home/pi/opencv/samples/cpp/falsecolor.cpp"
    "/home/pi/opencv/samples/cpp/fback.cpp"
    "/home/pi/opencv/samples/cpp/ffilldemo.cpp"
    "/home/pi/opencv/samples/cpp/filestorage.cpp"
    "/home/pi/opencv/samples/cpp/fitellipse.cpp"
    "/home/pi/opencv/samples/cpp/grabcut.cpp"
    "/home/pi/opencv/samples/cpp/image_alignment.cpp"
    "/home/pi/opencv/samples/cpp/imagelist_creator.cpp"
    "/home/pi/opencv/samples/cpp/imagelist_reader.cpp"
    "/home/pi/opencv/samples/cpp/inpaint.cpp"
    "/home/pi/opencv/samples/cpp/kalman.cpp"
    "/home/pi/opencv/samples/cpp/kmeans.cpp"
    "/home/pi/opencv/samples/cpp/laplace.cpp"
    "/home/pi/opencv/samples/cpp/letter_recog.cpp"
    "/home/pi/opencv/samples/cpp/lkdemo.cpp"
    "/home/pi/opencv/samples/cpp/logistic_regression.cpp"
    "/home/pi/opencv/samples/cpp/lsd_lines.cpp"
    "/home/pi/opencv/samples/cpp/mask_tmpl.cpp"
    "/home/pi/opencv/samples/cpp/matchmethod_orb_akaze_brisk.cpp"
    "/home/pi/opencv/samples/cpp/minarea.cpp"
    "/home/pi/opencv/samples/cpp/morphology2.cpp"
    "/home/pi/opencv/samples/cpp/neural_network.cpp"
    "/home/pi/opencv/samples/cpp/npr_demo.cpp"
    "/home/pi/opencv/samples/cpp/opencv_version.cpp"
    "/home/pi/opencv/samples/cpp/pca.cpp"
    "/home/pi/opencv/samples/cpp/peopledetect.cpp"
    "/home/pi/opencv/samples/cpp/phase_corr.cpp"
    "/home/pi/opencv/samples/cpp/points_classifier.cpp"
    "/home/pi/opencv/samples/cpp/polar_transforms.cpp"
    "/home/pi/opencv/samples/cpp/qrcode.cpp"
    "/home/pi/opencv/samples/cpp/segment_objects.cpp"
    "/home/pi/opencv/samples/cpp/select3dobj.cpp"
    "/home/pi/opencv/samples/cpp/smiledetect.cpp"
    "/home/pi/opencv/samples/cpp/squares.cpp"
    "/home/pi/opencv/samples/cpp/stereo_calib.cpp"
    "/home/pi/opencv/samples/cpp/stereo_match.cpp"
    "/home/pi/opencv/samples/cpp/stitching.cpp"
    "/home/pi/opencv/samples/cpp/stitching_detailed.cpp"
    "/home/pi/opencv/samples/cpp/train_HOG.cpp"
    "/home/pi/opencv/samples/cpp/train_svmsgd.cpp"
    "/home/pi/opencv/samples/cpp/travelsalesman.cpp"
    "/home/pi/opencv/samples/cpp/tree_engine.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_basic.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_camera.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_gphoto2_autofocus.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_gstreamer_pipeline.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_image_sequence.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_intelperc.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_openni.cpp"
    "/home/pi/opencv/samples/cpp/videocapture_starter.cpp"
    "/home/pi/opencv/samples/cpp/videowriter_basic.cpp"
    "/home/pi/opencv/samples/cpp/warpPerspective_demo.cpp"
    "/home/pi/opencv/samples/cpp/watershed.cpp"
    "/home/pi/opencv/samples/cpp/CMakeLists.txt"
    )
endif()

