# CMake generated Testfile for 
# Source directory: /home/drocode/ros_catkin_ws/src/ros_comm/rosmsg
# Build directory: /home/drocode/ros_catkin_ws/build_isolated/rosmsg
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosmsg_nosetests_test "/home/drocode/ros_catkin_ws/build_isolated/rosmsg/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/drocode/ros_catkin_ws/build_isolated/rosmsg/test_results/rosmsg/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/drocode/ros_catkin_ws/build_isolated/rosmsg/test_results/rosmsg" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/drocode/ros_catkin_ws/src/ros_comm/rosmsg/test --with-xunit --xunit-file=/home/drocode/ros_catkin_ws/build_isolated/rosmsg/test_results/rosmsg/nosetests-test.xml")
set_tests_properties(_ctest_rosmsg_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/drocode/ros_catkin_ws/src/ros_comm/rosmsg/CMakeLists.txt;9;catkin_add_nosetests;/home/drocode/ros_catkin_ws/src/ros_comm/rosmsg/CMakeLists.txt;0;")
subdirs("gtest")
