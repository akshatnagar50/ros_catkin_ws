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
CMAKE_SOURCE_DIR = /home/drocode/ros_catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drocode/ros_catkin_ws/build

# Utility rule file for clean_test_results_roscreate.

# Include the progress variables for this target.
include ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/progress.make

ros/roscreate/CMakeFiles/clean_test_results_roscreate:
	cd /home/drocode/ros_catkin_ws/build/ros/roscreate && /usr/bin/python3 /home/drocode/ros_catkin_ws/src/catkin/cmake/test/remove_test_results.py /home/drocode/ros_catkin_ws/build/test_results/roscreate

clean_test_results_roscreate: ros/roscreate/CMakeFiles/clean_test_results_roscreate
clean_test_results_roscreate: ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/build.make

.PHONY : clean_test_results_roscreate

# Rule to build all files generated by this target.
ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/build: clean_test_results_roscreate

.PHONY : ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/build

ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/clean:
	cd /home/drocode/ros_catkin_ws/build/ros/roscreate && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_roscreate.dir/cmake_clean.cmake
.PHONY : ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/clean

ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/depend:
	cd /home/drocode/ros_catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drocode/ros_catkin_ws/src /home/drocode/ros_catkin_ws/src/ros/roscreate /home/drocode/ros_catkin_ws/build /home/drocode/ros_catkin_ws/build/ros/roscreate /home/drocode/ros_catkin_ws/build/ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros/roscreate/CMakeFiles/clean_test_results_roscreate.dir/depend

