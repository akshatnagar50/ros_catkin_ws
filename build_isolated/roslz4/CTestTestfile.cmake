# CMake generated Testfile for 
# Source directory: /home/drocode/ros_catkin_ws/src/ros_comm/roslz4
# Build directory: /home/drocode/ros_catkin_ws/build_isolated/roslz4
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_roslz4_gtest_test_roslz4 "/home/drocode/ros_catkin_ws/build_isolated/roslz4/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/drocode/ros_catkin_ws/build_isolated/roslz4/test_results/roslz4/gtest-test_roslz4.xml" "--return-code" "/home/drocode/ros_catkin_ws/devel_isolated/roslz4/lib/roslz4/test_roslz4 --gtest_output=xml:/home/drocode/ros_catkin_ws/build_isolated/roslz4/test_results/roslz4/gtest-test_roslz4.xml")
set_tests_properties(_ctest_roslz4_gtest_test_roslz4 PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/drocode/ros_catkin_ws/src/ros_comm/roslz4/CMakeLists.txt;91;catkin_add_gtest;/home/drocode/ros_catkin_ws/src/ros_comm/roslz4/CMakeLists.txt;0;")
subdirs("gtest")
