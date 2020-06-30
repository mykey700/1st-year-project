# Install script for directory: /home/pi/opencv/modules/world

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE OPTIONAL RENAME "SoftFloat-COPYING.txt" FILES "/home/pi/opencv/modules/core/3rdparty/SoftFloat/COPYING.txt")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/phase_unwrapping" TYPE FILE FILES "/home/pi/opencv_contrib/modules/phase_unwrapping/samples/unwrap.cpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/phase_unwrapping" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/plot" TYPE FILE FILES "/home/pi/opencv_contrib/modules/plot/samples/plot_demo.cpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/plot" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/reg" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/reg/samples/CMakeLists.txt"
    "/home/pi/opencv_contrib/modules/reg/samples/LR_05.png"
    "/home/pi/opencv_contrib/modules/reg/samples/LR_06.png"
    "/home/pi/opencv_contrib/modules/reg/samples/home.png"
    "/home/pi/opencv_contrib/modules/reg/samples/map_test.cpp"
    "/home/pi/opencv_contrib/modules/reg/samples/reg_shift.py"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/reg" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/surface_matching" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/surface_matching/samples/ppf_icp.py"
    "/home/pi/opencv_contrib/modules/surface_matching/samples/ppf_load_match.cpp"
    "/home/pi/opencv_contrib/modules/surface_matching/samples/ppf_normal_computation.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/surface_matching" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/surface_matching/samples/data")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/xphoto" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/xphoto/samples/bm3d_image_denoising.cpp"
    "/home/pi/opencv_contrib/modules/xphoto/samples/color_balance.cpp"
    "/home/pi/opencv_contrib/modules/xphoto/samples/color_balance_benchmark.py"
    "/home/pi/opencv_contrib/modules/xphoto/samples/dct_image_denoising.cpp"
    "/home/pi/opencv_contrib/modules/xphoto/samples/inpainting.cpp"
    "/home/pi/opencv_contrib/modules/xphoto/samples/learn_color_balance.py"
    "/home/pi/opencv_contrib/modules/xphoto/samples/oil.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/xphoto" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/fuzzy" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/fuzzy/samples/fuzzy_filtering.cpp"
    "/home/pi/opencv_contrib/modules/fuzzy/samples/fuzzy_inpainting.cpp"
    "/home/pi/opencv_contrib/modules/fuzzy/samples/input.png"
    "/home/pi/opencv_contrib/modules/fuzzy/samples/mask1.png"
    "/home/pi/opencv_contrib/modules/fuzzy/samples/mask2.png"
    "/home/pi/opencv_contrib/modules/fuzzy/samples/mask3.png"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/fuzzy" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/gapi" TYPE FILE FILES
    "/home/pi/opencv/modules/gapi/samples/api_example.cpp"
    "/home/pi/opencv/modules/gapi/samples/api_ref_snippets.cpp"
    "/home/pi/opencv/modules/gapi/samples/kernel_api_snippets.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/gapi" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/hfs" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/hfs/samples/CMakeLists.txt"
    "/home/pi/opencv_contrib/modules/hfs/samples/example.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/hfs" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/hfs/samples/data")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/bioinspired" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/bioinspired/samples/OpenEXRimages_HDR_Retina_toneMapping.cpp"
    "/home/pi/opencv_contrib/modules/bioinspired/samples/retinaDemo.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/bioinspired" TYPE DIRECTORY FILES
    "/home/pi/opencv_contrib/modules/bioinspired/samples/cpp"
    "/home/pi/opencv_contrib/modules/bioinspired/samples/ocl"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/dnn_objdetect" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/dnn_objdetect/samples/image_classification.cpp"
    "/home/pi/opencv_contrib/modules/dnn_objdetect/samples/obj_detect.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/dnn_objdetect" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/dnn_objdetect/samples/data")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/line_descriptor" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/line_descriptor/samples/compute_descriptors.cpp"
    "/home/pi/opencv_contrib/modules/line_descriptor/samples/knn_matching.cpp"
    "/home/pi/opencv_contrib/modules/line_descriptor/samples/lines_extraction.cpp"
    "/home/pi/opencv_contrib/modules/line_descriptor/samples/lsd_lines_extraction.cpp"
    "/home/pi/opencv_contrib/modules/line_descriptor/samples/matching.cpp"
    "/home/pi/opencv_contrib/modules/line_descriptor/samples/radius_matching.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/line_descriptor" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/saliency" TYPE FILE FILES "/home/pi/opencv_contrib/modules/saliency/samples/computeSaliency.cpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/saliency" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/saliency/samples/ObjectnessTrainedModel")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/text" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/text/samples/OCRBeamSearch_CNN_model_data.xml.gz"
    "/home/pi/opencv_contrib/modules/text/samples/OCRHMM_knn_model_data.xml.gz"
    "/home/pi/opencv_contrib/modules/text/samples/OCRHMM_transitions_table.xml"
    "/home/pi/opencv_contrib/modules/text/samples/character_recognition.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/cropped_word_recognition.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/deeptextdetection.py"
    "/home/pi/opencv_contrib/modules/text/samples/detect_er_chars.py"
    "/home/pi/opencv_contrib/modules/text/samples/dictnet_demo.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/end_to_end_recognition.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext01.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext02.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext03.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext04.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext05.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext06.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_char01.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_char02.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_char03.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word01.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word01_mask.png"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word02.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word02_mask.png"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word03.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word03_mask.png"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word04.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word04_mask.png"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word05.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_segmented_word05_mask.png"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_word01.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_word02.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_word03.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/scenetext_word04.jpg"
    "/home/pi/opencv_contrib/modules/text/samples/segmented_word_recognition.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/text_recognition_cnn.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/textbox.prototxt"
    "/home/pi/opencv_contrib/modules/text/samples/textbox_demo.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/textdetection.cpp"
    "/home/pi/opencv_contrib/modules/text/samples/textdetection.py"
    "/home/pi/opencv_contrib/modules/text/samples/trained_classifierNM1.xml"
    "/home/pi/opencv_contrib/modules/text/samples/trained_classifierNM2.xml"
    "/home/pi/opencv_contrib/modules/text/samples/trained_classifier_erGrouping.xml"
    "/home/pi/opencv_contrib/modules/text/samples/webcam_demo.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/text" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/ccalib" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/ccalib/samples/multi_cameras_calibration.cpp"
    "/home/pi/opencv_contrib/modules/ccalib/samples/omni_calibration.cpp"
    "/home/pi/opencv_contrib/modules/ccalib/samples/omni_stereo_calibration.cpp"
    "/home/pi/opencv_contrib/modules/ccalib/samples/random_pattern_calibration.cpp"
    "/home/pi/opencv_contrib/modules/ccalib/samples/random_pattern_generator.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/ccalib" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/datasets" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/datasets/samples/ar_hmdb.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/ar_hmdb_benchmark.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/ar_sports.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/fr_adience.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/fr_lfw.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/fr_lfw_benchmark.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/gr_chalearn.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/gr_skig.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/hpe_humaneva.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/hpe_parse.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/ir_affine.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/ir_robot.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/is_bsds.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/is_weizmann.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/msm_epfl.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/msm_middlebury.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/or_imagenet.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/or_mnist.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/or_pascal.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/or_sun.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/pd_caltech.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/pd_inria.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/slam_kitti.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/slam_tumindoor.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/tr_chars.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/tr_chars_benchmark.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/tr_icdar.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/tr_icdar_benchmark.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/tr_svt.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/tr_svt_benchmark.cpp"
    "/home/pi/opencv_contrib/modules/datasets/samples/track_vot.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/datasets" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/rgbd" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/rgbd/samples/kinfu_demo.cpp"
    "/home/pi/opencv_contrib/modules/rgbd/samples/linemod.cpp"
    "/home/pi/opencv_contrib/modules/rgbd/samples/odometry_evaluation.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/rgbd" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/shape" TYPE FILE FILES "/home/pi/opencv_contrib/modules/shape/samples/shape_example.cpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/shape" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/shape/samples/data")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/stereo" TYPE FILE FILES "/home/pi/opencv_contrib/modules/stereo/samples/sample.cpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/stereo" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/structured_light" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/structured_light/samples/cap_pattern.cpp"
    "/home/pi/opencv_contrib/modules/structured_light/samples/capsinpattern.cpp"
    "/home/pi/opencv_contrib/modules/structured_light/samples/pointcloud.cpp"
    "/home/pi/opencv_contrib/modules/structured_light/samples/projectorcalibration.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/structured_light" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/videostab" TYPE FILE FILES "/home/pi/opencv_contrib/modules/videostab/samples/videostab.cpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/videostab" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/xfeatures2d" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/bagofwords_classification.cpp"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/export-boostdesc.py"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/gms_matcher.cpp"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/pct_signatures.cpp"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/pct_webcam.cpp"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/shape_transformation.cpp"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/surf_matcher.cpp"
    "/home/pi/opencv_contrib/modules/xfeatures2d/samples/video_homography.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/xfeatures2d" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/ximgproc" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/ximgproc/samples/CMakeLists.txt"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/brightedgesexample.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/color_match_template.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/colorize.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/dericheSample.py"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/deriche_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/disparity_filtering.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/edgeboxes_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/edgeboxes_demo.py"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/edgepreserving_filter_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/fast_hough_transform.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/filterdemo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/findredlinedpolygonfromgooglemaps.py"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/fld_lines.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/fourier_descriptors_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/fourier_descriptors_demo.py"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/graphsegmentation_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/live_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/niblack_thresholding.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/paillou_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/peilin.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/peilin_plane.png"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/peilin_shape.png"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/polygonstanfordoutput.png"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/run_length_morphology_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/seeds.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/selectivesearchsegmentation_demo.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/selectivesearchsegmentation_demo.py"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/slic.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/stanford.png"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/structured_edge_detection.cpp"
    "/home/pi/opencv_contrib/modules/ximgproc/samples/thinning.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/ximgproc" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/aruco" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/aruco/samples/calibrate_camera.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/calibrate_camera_charuco.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/create_board.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/create_board_charuco.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/create_diamond.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/create_marker.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/detect_board.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/detect_board_charuco.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/detect_diamonds.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/detect_markers.cpp"
    "/home/pi/opencv_contrib/modules/aruco/samples/detector_params.yml"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/aruco" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/bgsegm" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/bgsegm/samples/bgfg.cpp"
    "/home/pi/opencv_contrib/modules/bgsegm/samples/evaluation.py"
    "/home/pi/opencv_contrib/modules/bgsegm/samples/viz.py"
    "/home/pi/opencv_contrib/modules/bgsegm/samples/viz_synthetic_seq.py"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/bgsegm" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/dpm" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/dpm/samples/cascade_detect_camera.cpp"
    "/home/pi/opencv_contrib/modules/dpm/samples/cascade_detect_sequence.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/dpm" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/dpm/samples/data")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/face" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/face/samples/CMakeLists.txt"
    "/home/pi/opencv_contrib/modules/face/samples/Facemark.java"
    "/home/pi/opencv_contrib/modules/face/samples/facemark_demo_aam.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facemark_demo_lbf.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facemark_lbf_fitting.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facerec_demo.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facerec_eigenfaces.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facerec_fisherfaces.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facerec_lbph.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facerec_save_load.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/facerec_video.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/mace_webcam.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/sampleDetectLandmarks.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/sampleDetectLandmarksvideo.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/sample_config_file.xml"
    "/home/pi/opencv_contrib/modules/face/samples/sample_face_swapping.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/sample_train_landmark_detector.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/sample_train_landmark_detector2.cpp"
    "/home/pi/opencv_contrib/modules/face/samples/samplewriteconfigfile.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/face" TYPE DIRECTORY FILES "/home/pi/opencv_contrib/modules/face/samples/etc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/optflow" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/optflow/samples/gpc_evaluate.cpp"
    "/home/pi/opencv_contrib/modules/optflow/samples/gpc_train.cpp"
    "/home/pi/opencv_contrib/modules/optflow/samples/gpc_train_middlebury.py"
    "/home/pi/opencv_contrib/modules/optflow/samples/gpc_train_sintel.py"
    "/home/pi/opencv_contrib/modules/optflow/samples/motempl.cpp"
    "/home/pi/opencv_contrib/modules/optflow/samples/motempl.py"
    "/home/pi/opencv_contrib/modules/optflow/samples/optical_flow_benchmark.py"
    "/home/pi/opencv_contrib/modules/optflow/samples/optical_flow_evaluation.cpp"
    "/home/pi/opencv_contrib/modules/optflow/samples/pcaflow_demo.cpp"
    "/home/pi/opencv_contrib/modules/optflow/samples/simpleflow_demo.cpp"
    "/home/pi/opencv_contrib/modules/optflow/samples/tvl1_optical_flow.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/optflow" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/tracking" TYPE FILE FILES
    "/home/pi/opencv_contrib/modules/tracking/samples/benchmark.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/csrt.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/goturnTracker.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/kcf.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/multiTracker_dataset.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/multitracker.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/multitracker.py"
    "/home/pi/opencv_contrib/modules/tracking/samples/samples_utility.hpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/tracker.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/tracker.py"
    "/home/pi/opencv_contrib/modules/tracking/samples/tracker_dataset.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/tutorial_customizing_cn_tracker.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/tutorial_introduction_to_tracker.cpp"
    "/home/pi/opencv_contrib/modules/tracking/samples/tutorial_multitracker.cpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/tracking" TYPE DIRECTORY FILES "")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so.4.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so.4.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/pi/opencv/build/lib/libopencv_world.so.4.0.1"
    "/home/pi/opencv/build/lib/libopencv_world.so.4.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so.4.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so.4.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so"
         RPATH "/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/opencv/build/lib/libopencv_world.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so"
         OLD_RPATH "::::::::::::::"
         NEW_RPATH "/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_world.so")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/ocl_defs.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/opencl_info.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/opencl_svm.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_clamdblas.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_clamdfft.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_core_wrappers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_gl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_gl_wrappers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_clamdblas.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_clamdfft.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_core_wrappers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_gl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_gl_wrappers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_svm_20.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_svm_definitions.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opencl/runtime/opencl_svm_hsa_extension.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/block.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/border_interpolate.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/color.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/common.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/datamov_utils.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/dynamic_smem.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/emulation.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/filters.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/funcattrib.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/functional.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/limits.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/reduce.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/saturate_cast.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/scan.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/simd_functions.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/transform.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/type_traits.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/utility.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/vec_distance.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/vec_math.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/vec_traits.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/warp.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/warp_reduce.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/warp_shuffle.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/detail/color_detail.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/detail/reduce.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/detail/reduce_key_val.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/detail/transform_detail.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/detail/type_traits_detail.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda/detail/vec_distance_detail.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/affine.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/base.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/bindings_utils.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/bufferpool.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/check.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda.inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda_stream_accessor.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cuda_types.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cvstd.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cvstd.inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cvstd_wrapper.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/directx.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/eigen.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/fast_math.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/mat.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/mat.inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/matx.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/neon_utils.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/ocl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/ocl_genbase.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/opengl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/operations.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/optim.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/ovx.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/persistence.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/saturate.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/softfloat.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/sse_utils.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/traits.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/types.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/utility.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/va_intel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/version.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/vsx_utils.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/core_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cv_cpu_dispatch.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cv_cpu_helper.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/cvdef.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/types_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/hal.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_avx.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_cpp.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_forward.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_neon.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_sse.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_sse_em.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/intrin_vsx.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/hal/interface.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/utils" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/utils/filesystem.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/utils" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/utils/logger.defines.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/utils" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/utils/logger.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/core/utils" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/core/include/opencv2/core/utils/trace.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/flann.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/flann_base.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/miniflann.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/all_indices.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/allocator.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/any.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/autotuned_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/composite_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/config.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/defines.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/dist.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/dummy.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/dynamic_bitset.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/general.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/ground_truth.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/heap.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/hierarchical_clustering_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/index_testing.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/kdtree_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/kdtree_single_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/kmeans_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/linear_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/logger.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/lsh_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/lsh_table.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/matrix.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/nn_index.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/object_factory.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/params.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/random.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/result_set.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/sampling.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/saving.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/simplex_downhill.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/flann" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/flann/include/opencv2/flann/timer.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc/imgproc_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc/types_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc/hal/hal.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc/hal/interface.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgproc/include/opencv2/imgproc/detail/gcgraph.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/ml/include/opencv2/ml.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ml" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/ml/include/opencv2/ml/ml.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ml" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/ml/include/opencv2/ml/ml.inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/phase_unwrapping/include/opencv2/phase_unwrapping.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/phase_unwrapping" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/phase_unwrapping/include/opencv2/phase_unwrapping/histogramphaseunwrapping.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/phase_unwrapping" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/phase_unwrapping/include/opencv2/phase_unwrapping/phase_unwrapping.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/photo/include/opencv2/photo.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/photo" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/photo/include/opencv2/photo/cuda.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/photo" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/photo/include/opencv2/photo/photo.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/photo/legacy" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/photo/include/opencv2/photo/legacy/constants_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/plot/include/opencv2/plot.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/map.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mapaffine.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mapper.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mappergradaffine.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mappergradeuclid.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mappergradproj.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mappergradshift.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mappergradsimilar.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mapperpyramid.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mapprojec.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/reg/include/opencv2/reg/mapshift.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/surface_matching/include/opencv2/surface_matching.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/surface_matching/include/opencv2/surface_matching/icp.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/surface_matching/include/opencv2/surface_matching/pose_3d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/surface_matching/include/opencv2/surface_matching/ppf_helpers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/surface_matching/include/opencv2/surface_matching/ppf_match_3d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/surface_matching/include/opencv2/surface_matching/t_hash_int.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xphoto" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto/bm3d_image_denoising.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xphoto" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto/dct_image_denoising.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xphoto" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto/inpainting.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xphoto" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto/oilpainting.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xphoto" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto/tonemap.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xphoto" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xphoto/include/opencv2/xphoto/white_balance.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/all_layers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/dict.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/dnn.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/dnn.inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/layer.details.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/layer.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/shape_utils.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/dnn" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/dnn/include/opencv2/dnn/version.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/freetype/include/opencv2/freetype.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/fuzzy/include/opencv2/fuzzy.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/fuzzy/include/opencv2/fuzzy/fuzzy_F0_math.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/fuzzy/include/opencv2/fuzzy/fuzzy_F1_math.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/fuzzy/include/opencv2/fuzzy/fuzzy_image.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/fuzzy/include/opencv2/fuzzy/types.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/garg.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/garray.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gcall.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gcommon.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gcompiled.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gcompoundkernel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gcomputation.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gkernel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gmat.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gmetaarg.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gproto.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gscalar.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gtype_traits.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gtyped.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/opencv_includes.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/operators.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/util" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/util/any.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/util" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/util/compiler_hints.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/util" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/util/optional.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/util" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/util/throw.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/util" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/util/util.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/util" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/util/variant.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/cpu" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/cpu/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/cpu" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/cpu/gcpukernel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/cpu" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/cpu/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/gpu" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gpu/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/gpu" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gpu/ggpukernel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/gpu" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/gpu/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/ocl" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/ocl/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/ocl" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/ocl/goclkernel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/ocl" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/ocl/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/fluid" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/fluid/core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/fluid" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/fluid/gfluidbuffer.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/fluid" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/fluid/gfluidkernel.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/fluid" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/fluid/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/assert.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/convert.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/cvdefs.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/exports.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/mat.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/saturate.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/scalar.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/gapi/own" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/gapi/include/opencv2/gapi/own/types.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/hfs/include/opencv2/hfs.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgcodecs/include/opencv2/imgcodecs.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgcodecs/include/opencv2/imgcodecs/imgcodecs.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgcodecs/include/opencv2/imgcodecs/imgcodecs_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgcodecs/include/opencv2/imgcodecs/ios.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgcodecs/legacy" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/imgcodecs/include/opencv2/imgcodecs/legacy/constants_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/videoio/include/opencv2/videoio.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videoio" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/videoio/include/opencv2/videoio/registry.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videoio" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/videoio/include/opencv2/videoio/videoio.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videoio" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/videoio/include/opencv2/videoio/cap_ios.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videoio" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/videoio/include/opencv2/videoio/videoio_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videoio/legacy" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/videoio/include/opencv2/videoio/legacy/constants_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/highgui/include/opencv2/highgui.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/highgui" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/highgui/include/opencv2/highgui/highgui.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/highgui" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/highgui/include/opencv2/highgui/highgui_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/bioinspired/include/opencv2/bioinspired.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/bioinspired/include/opencv2/bioinspired/bioinspired.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/bioinspired/include/opencv2/bioinspired/retina.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/bioinspired/include/opencv2/bioinspired/retinafasttonemapping.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/bioinspired/include/opencv2/bioinspired/transientareassegmentationmodule.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/dnn_objdetect/include/opencv2/core_detect.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/features2d/include/opencv2/features2d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/features2d" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/features2d/include/opencv2/features2d/features2d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/features2d/hal" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/features2d/include/opencv2/features2d/hal/interface.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/line_descriptor/include/opencv2/line_descriptor.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/line_descriptor" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/line_descriptor/include/opencv2/line_descriptor/descriptor.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/saliency/include/opencv2/saliency.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/saliency" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/saliency/include/opencv2/saliency/saliencyBaseClasses.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/saliency" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/saliency/include/opencv2/saliency/saliencySpecializedClasses.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/text/include/opencv2/text.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/text" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/text/include/opencv2/text/erfilter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/text" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/text/include/opencv2/text/ocr.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/text" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/text/include/opencv2/text/textDetector.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/calib3d/include/opencv2/calib3d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/calib3d" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/calib3d/include/opencv2/calib3d/calib3d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/calib3d" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/calib3d/include/opencv2/calib3d/calib3d_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ccalib/include/opencv2/ccalib.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ccalib" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ccalib/include/opencv2/ccalib/multicalib.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ccalib" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ccalib/include/opencv2/ccalib/omnidir.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ccalib" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ccalib/include/opencv2/ccalib/randpattern.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/ar_hmdb.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/ar_sports.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/dataset.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/fr_adience.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/fr_lfw.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/gr_chalearn.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/gr_skig.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/hpe_humaneva.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/hpe_parse.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/ir_affine.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/ir_robot.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/is_bsds.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/is_weizmann.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/msm_epfl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/msm_middlebury.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/or_imagenet.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/or_mnist.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/or_pascal.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/or_sun.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/pd_caltech.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/pd_inria.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/slam_kitti.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/slam_tumindoor.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/tr_chars.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/tr_icdar.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/tr_svt.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/track_alov.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/track_vot.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/datasets/include/opencv2/datasets/util.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/objdetect/include/opencv2/objdetect.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/objdetect" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/objdetect/include/opencv2/objdetect/detection_based_tracker.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/objdetect" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/objdetect/include/opencv2/objdetect/objdetect.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/rgbd/include/opencv2/rgbd.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/rgbd/include/opencv2/rgbd/depth.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/rgbd/include/opencv2/rgbd/kinfu.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/rgbd/include/opencv2/rgbd/linemod.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/shape/include/opencv2/shape.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/shape" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/shape/include/opencv2/shape/emdL1.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/shape" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/shape/include/opencv2/shape/hist_cost.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/shape" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/shape/include/opencv2/shape/shape.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/shape" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/shape/include/opencv2/shape/shape_distance.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/shape" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/shape/include/opencv2/shape/shape_transformer.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/stereo/include/opencv2/stereo.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stereo" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/stereo/include/opencv2/stereo/descriptor.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stereo" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/stereo/include/opencv2/stereo/matching.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stereo" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/stereo/include/opencv2/stereo/stereo.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/structured_light/include/opencv2/structured_light.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/structured_light" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/structured_light/include/opencv2/structured_light/graycodepattern.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/structured_light" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/structured_light/include/opencv2/structured_light/sinusoidalpattern.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/structured_light" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/structured_light/include/opencv2/structured_light/structured_light.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/video/include/opencv2/video.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/video/include/opencv2/video/background_segm.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/video/include/opencv2/video/tracking.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/video/include/opencv2/video/video.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video/legacy" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/video/include/opencv2/video/legacy/constants_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/deblurring.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/fast_marching.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/fast_marching_inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/frame_source.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/global_motion.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/inpainting.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/log.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/motion_core.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/motion_stabilizing.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/optical_flow.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/outlier_rejection.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/ring_buffer.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/stabilizer.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/videostab" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/videostab/include/opencv2/videostab/wobble_suppression.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xfeatures2d/include/opencv2/xfeatures2d.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xfeatures2d" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xfeatures2d/include/opencv2/xfeatures2d/cuda.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/xfeatures2d" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xfeatures2d/include/opencv2/xfeatures2d/nonfree.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/brightedges.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/color_match.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/deriche_filter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/disparity_filter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/edge_filter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/edgeboxes.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/edgepreserving_filter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/estimated_covariance.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/fast_hough_transform.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/fast_line_detector.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/fourier_descriptors.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/lsc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/paillou_filter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/peilin.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/ridgefilter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/run_length_morphology.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/seeds.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/segmentation.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/slic.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/sparse_match_interpolator.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/structured_edge_detection.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/ximgproc/include/opencv2/ximgproc/weighted_median_filter.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/xobjdetect/include/opencv2/xobjdetect.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/aruco/include/opencv2/aruco.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/aruco" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/aruco/include/opencv2/aruco/charuco.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/aruco" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/aruco/include/opencv2/aruco/dictionary.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/bgsegm/include/opencv2/bgsegm.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/dpm/include/opencv2/dpm.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/bif.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/face_alignment.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/facemark.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/facemarkAAM.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/facemarkLBF.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/facemark_train.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/facerec.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/mace.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/face" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/face/include/opencv2/face/predict_collector.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/optflow/include/opencv2/optflow.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/optflow" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/optflow/include/opencv2/optflow/motempl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/optflow" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/optflow/include/opencv2/optflow/pcaflow.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/optflow" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/optflow/include/opencv2/optflow/sparse_matching_gpc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/warpers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/autocalib.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/blenders.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/camera.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/exposure_compensate.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/matchers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/motion_estimators.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/seam_finders.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/timelapsers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/util.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/util_inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/warpers.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/stitching/include/opencv2/stitching/detail/warpers_inl.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/superres/include/opencv2/superres.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/superres" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/superres/include/opencv2/superres/optical_flow.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/feature.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/kalman_filters.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/onlineBoosting.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/onlineMIL.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/tldDataset.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/tracker.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/tracking" TYPE FILE OPTIONAL FILES "/home/pi/opencv_contrib/modules/tracking/include/opencv2/tracking/tracking.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/modules/world/include/opencv2/world.hpp")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pi/opencv/build/modules/world/tools/cmake_install.cmake")

endif()

