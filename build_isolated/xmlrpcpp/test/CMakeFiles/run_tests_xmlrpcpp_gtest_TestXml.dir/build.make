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

# Utility rule file for run_tests_xmlrpcpp_gtest_TestXml.

# Include the progress variables for this target.
include test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/progress.make

test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test_results/xmlrpcpp/gtest-TestXml.xml "/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestXml --gtest_output=xml:/home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test_results/xmlrpcpp/gtest-TestXml.xml"

run_tests_xmlrpcpp_gtest_TestXml: test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml
run_tests_xmlrpcpp_gtest_TestXml: test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/build.make

.PHONY : run_tests_xmlrpcpp_gtest_TestXml

# Rule to build all files generated by this target.
test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/build: run_tests_xmlrpcpp_gtest_TestXml

.PHONY : test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/build

test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/clean:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/clean

test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/depend:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/run_tests_xmlrpcpp_gtest_TestXml.dir/depend

