# Install script for directory: /home/drocode/ros_catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/drocode/ros_catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/drocode/ros_catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/drocode/ros_catkin_ws/install" TYPE PROGRAM FILES "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/drocode/ros_catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/drocode/ros_catkin_ws/install" TYPE PROGRAM FILES "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/drocode/ros_catkin_ws/install/setup.bash;/home/drocode/ros_catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/drocode/ros_catkin_ws/install" TYPE FILE FILES
    "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/drocode/ros_catkin_ws/install/setup.sh;/home/drocode/ros_catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/drocode/ros_catkin_ws/install" TYPE FILE FILES
    "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/drocode/ros_catkin_ws/install/setup.zsh;/home/drocode/ros_catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/drocode/ros_catkin_ws/install" TYPE FILE FILES
    "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/drocode/ros_catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/drocode/ros_catkin_ws/install" TYPE FILE FILES "/home/drocode/ros_catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/drocode/ros_catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/catkin/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/genmsg/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/gencpp/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/geneus/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/genlisp/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/gennodejs/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/genpy/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/cmake_modules/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/class_loader/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/roscpp_core/cpp_common/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/message_generation/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/message_runtime/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/mk/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/ros/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/ros_comm/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_environment/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/rosbash/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/rosboost_cfg/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/rosbuild/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/rosclean/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/roscpp_core/roscpp_traits/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/roscreate/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosgraph/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/roslang/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/roslisp/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/rosmake/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosmaster/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/rospack/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/roslib/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosparam/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rospy/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosservice/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/roscpp_core/rostime/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/roscpp_core/roscpp_serialization/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/roslaunch/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros/rosunit/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/rosconsole/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/pluginlib/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/roslz4/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rostest/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/std_msgs/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/common_msgs/diagnostic_msgs/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm_msgs/rosgraph_msgs/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm_msgs/std_srvs/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/xmlrpcpp/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/roscpp/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosout/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/message_filters/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosbag_storage/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosmsg/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosnode/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rostopic/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/topic_tools/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/rosbag/cmake_install.cmake")
  include("/home/drocode/ros_catkin_ws/build/ros_comm/roswtf/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/drocode/ros_catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
