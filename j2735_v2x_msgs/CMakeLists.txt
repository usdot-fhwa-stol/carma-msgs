#
# Copyright (C) 2018-2024 LEIDOS.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#

cmake_minimum_required(VERSION 3.5)
project(j2735_v2x_msgs)
set(CMAKE_CXX_STANDARD 17)

find_package(carma_cmake_common REQUIRED)
carma_package()

find_package(ros_environment REQUIRED)

set(ROS_VERSION $ENV{ROS_VERSION})

file(GLOB msg_files msg/*.msg)

if(${ROS_VERSION} EQUAL 1) # ROS 1
  find_package(catkin REQUIRED
    COMPONENTS
    message_generation
    std_msgs
  )

  foreach(filePath ${msg_files})
    get_filename_component(name ${filePath} NAME)
    set(msgs ${msgs} ${name})
  endforeach(filePath)

  add_message_files(DIRECTORY msg
    FILES
    ${msgs}
  )

  generate_messages(
    DEPENDENCIES
    std_msgs
  )

  catkin_package(
    CATKIN_DEPENDS
    message_runtime
    std_msgs
  )

  include_directories(
  # include
    ${catkin_INCLUDE_DIRS}
  )

  set(INCLUDE_DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})

else() # ROS 2

  find_package(rosidl_default_generators REQUIRED)
  find_package(ament_cmake REQUIRED)
  find_package(ament_cmake_auto REQUIRED)
  find_package(std_msgs REQUIRED)

  foreach(filePath ${msg_files})
    get_filename_component(name ${filePath} NAME)
    set(msgs ${msgs} msg/${name})
  endforeach(filePath)

  rosidl_generate_interfaces(
      ${PROJECT_NAME}
        ${msgs}
      DEPENDENCIES
        std_msgs
  )

  install(DIRECTORY include/${PROJECT_NAME}/
    DESTINATION include/${PROJECT_NAME}
  )

  set(INCLUDE_DESTINATION include/${PROJECT_NAME}/${PROJECT_NAME})

  ament_export_dependencies(rosidl_default_runtime)
  ament_package()

  if (BUILD_TESTING)
    enable_testing()

    ament_auto_find_test_dependencies()

    ament_auto_add_gtest(j2735_v2x_msgs_tests
      test/test_to_floating_point.cpp
    )

    rosidl_target_interfaces(j2735_v2x_msgs_tests ${PROJECT_NAME} "rosidl_typesupport_cpp")
  endif()

endif()

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.hpp"
  PATTERN ".svn" EXCLUDE
)
