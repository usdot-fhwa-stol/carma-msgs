# Copyright 2023 Leidos
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required(VERSION 3.16)
project(carma_cooperative_perception_interfaces)

# CARMA builds packages in an environment with both ROS 1 and ROS 2 installed.
# This check gracefully skips the current package if the sourced ROS environment
# is not the specified version. This call must come before any other ROS
# dependencies becasue ROS 1 does not have some of the required packages.
find_package(carma_cmake_common REQUIRED)

if(DEFINED ENV{ROS_VERSION} AND $ENV{ROS_VERSION} EQUAL 1)
  # ROS 1 uses a different, incompatible CMake workflow than ROS 2. Until CARMA
  # fully transitions to ROS 2, we need to support ROS 1 environments too.
  message(STATUS "Configuring `carma_cooperative_perception_interfaces` for ROS 1")
  include(${PROJECT_SOURCE_DIR}/cmake/configure_for_ros1.cmake)

  return()
endif()

carma_check_ros_version(2)

# Added outside of `dependencies.cmake` because ament sets some variables (e.g., BUILD_TESTING)
# that affect the configuration options for the rest of the package. Putting the command call
# here allows us to put all project options together in separate CMake module then query those
# options in `dependencies.cmake`.
find_package(ament_cmake REQUIRED)

include(project_options.cmake)
include(dependencies.cmake)

# C17 support added in CMake 3.21
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 11)

file(GLOB carma_cooperative_perception_interfaces_MSG_FILES RELATIVE ${PROJECT_SOURCE_DIR} msg/*.msg)

rosidl_generate_interfaces(carma_cooperative_perception_interfaces
  ${carma_cooperative_perception_interfaces_MSG_FILES}
  DEPENDENCIES
    std_msgs
    geometry_msgs
)

if(carma_cooperative_perception_interfaces_BUILD_TESTS)
  # ament_lint_auto()
endif()

ament_auto_package()
