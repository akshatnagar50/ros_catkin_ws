# CMake generated Testfile for 
# Source directory: /home/drocode/ros_catkin_ws/src/ros_comm/rosgraph
# Build directory: /home/drocode/ros_catkin_ws/build/ros_comm/rosgraph
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosgraph_nosetests_test "/home/drocode/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/drocode/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/drocode/ros_catkin_ws/build/test_results/rosgraph/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/drocode/ros_catkin_ws/build/test_results/rosgraph" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/drocode/ros_catkin_ws/src/ros_comm/rosgraph/test --with-xunit --xunit-file=/home/drocode/ros_catkin_ws/build/test_results/rosgraph/nosetests-test.xml")
set_tests_properties(_ctest_rosgraph_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/home/drocode/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/drocode/ros_catkin_ws/src/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/drocode/ros_catkin_ws/src/ros_comm/rosgraph/CMakeLists.txt;19;catkin_add_nosetests;/home/drocode/ros_catkin_ws/src/ros_comm/rosgraph/CMakeLists.txt;0;")
