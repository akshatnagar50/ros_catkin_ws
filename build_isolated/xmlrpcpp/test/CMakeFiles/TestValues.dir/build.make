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

# Include any dependencies generated for this target.
include test/CMakeFiles/TestValues.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/TestValues.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/TestValues.dir/flags.make

test/CMakeFiles/TestValues.dir/TestValues.cpp.o: test/CMakeFiles/TestValues.dir/flags.make
test/CMakeFiles/TestValues.dir/TestValues.cpp.o: /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/TestValues.dir/TestValues.cpp.o"
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestValues.dir/TestValues.cpp.o -c /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp

test/CMakeFiles/TestValues.dir/TestValues.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestValues.dir/TestValues.cpp.i"
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp > CMakeFiles/TestValues.dir/TestValues.cpp.i

test/CMakeFiles/TestValues.dir/TestValues.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestValues.dir/TestValues.cpp.s"
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp -o CMakeFiles/TestValues.dir/TestValues.cpp.s

# Object files for target TestValues
TestValues_OBJECTS = \
"CMakeFiles/TestValues.dir/TestValues.cpp.o"

# External object files for target TestValues
TestValues_EXTERNAL_OBJECTS =

/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: test/CMakeFiles/TestValues.dir/TestValues.cpp.o
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: test/CMakeFiles/TestValues.dir/build.make
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: gtest/lib/libgtest.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/libxmlrpcpp.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /opt/ros/noetic/lib/librostime.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /opt/ros/noetic/lib/libcpp_common.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues: test/CMakeFiles/TestValues.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues"
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestValues.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/TestValues.dir/build: /home/drocode/ros_catkin_ws/devel_isolated/xmlrpcpp/lib/xmlrpcpp/TestValues

.PHONY : test/CMakeFiles/TestValues.dir/build

test/CMakeFiles/TestValues.dir/clean:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test && $(CMAKE_COMMAND) -P CMakeFiles/TestValues.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/TestValues.dir/clean

test/CMakeFiles/TestValues.dir/depend:
	cd /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test /home/drocode/ros_catkin_ws/build_isolated/xmlrpcpp/test/CMakeFiles/TestValues.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/TestValues.dir/depend

