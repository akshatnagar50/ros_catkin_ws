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

# Include any dependencies generated for this target.
include ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/depend.make

# Include the progress variables for this target.
include ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/progress.make

# Include the compile flags for this target's objects.
include ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/flags.make

ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/test_ulimit.cpp.o: ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/flags.make
ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/test_ulimit.cpp.o: /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/test_ulimit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drocode/ros_catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/test_ulimit.cpp.o"
	cd /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_ulimit.dir/test_ulimit.cpp.o -c /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/test_ulimit.cpp

ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/test_ulimit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_ulimit.dir/test_ulimit.cpp.i"
	cd /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/test_ulimit.cpp > CMakeFiles/test_ulimit.dir/test_ulimit.cpp.i

ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/test_ulimit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_ulimit.dir/test_ulimit.cpp.s"
	cd /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/test_ulimit.cpp -o CMakeFiles/test_ulimit.dir/test_ulimit.cpp.s

# Object files for target test_ulimit
test_ulimit_OBJECTS = \
"CMakeFiles/test_ulimit.dir/test_ulimit.cpp.o"

# External object files for target test_ulimit
test_ulimit_EXTERNAL_OBJECTS =

/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/test_ulimit.cpp.o
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/build.make
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /home/drocode/ros_catkin_ws/devel/lib/libtest_fixtures.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: gtest/lib/libgtest.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /home/drocode/ros_catkin_ws/devel/lib/libxmlrpcpp.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /home/drocode/ros_catkin_ws/devel/lib/librostime.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/librt.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /home/drocode/ros_catkin_ws/devel/lib/libcpp_common.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit: ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/drocode/ros_catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit"
	cd /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_ulimit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/build: /home/drocode/ros_catkin_ws/devel/lib/xmlrpcpp/test_ulimit

.PHONY : ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/build

ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/clean:
	cd /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && $(CMAKE_COMMAND) -P CMakeFiles/test_ulimit.dir/cmake_clean.cmake
.PHONY : ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/clean

ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/depend:
	cd /home/drocode/ros_catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drocode/ros_catkin_ws/src /home/drocode/ros_catkin_ws/src/ros_comm/xmlrpcpp/test /home/drocode/ros_catkin_ws/build /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test /home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_comm/xmlrpcpp/test/CMakeFiles/test_ulimit.dir/depend

