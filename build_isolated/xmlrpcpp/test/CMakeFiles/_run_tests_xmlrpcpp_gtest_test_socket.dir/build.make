# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp

# Utility rule file for _run_tests_xmlrpcpp_gtest_test_socket.

# Include the progress variables for this target.
include test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/progress.make

test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test_results/xmlrpcpp/gtest-test_socket.xml "/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/test_socket --gtest_output=xml:/home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test_results/xmlrpcpp/gtest-test_socket.xml"

_run_tests_xmlrpcpp_gtest_test_socket: test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket
_run_tests_xmlrpcpp_gtest_test_socket: test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/build.make

.PHONY : _run_tests_xmlrpcpp_gtest_test_socket

# Rule to build all files generated by this target.
test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/build: _run_tests_xmlrpcpp_gtest_test_socket

.PHONY : test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/build

test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/clean:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/clean

test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/depend:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/_run_tests_xmlrpcpp_gtest_test_socket.dir/depend

