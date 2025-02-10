#
# Copyright (C) 2021 LEIDOS.
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
project(raptor_dbw_msgs)
set(CMAKE_CXX_STANDARD 14)

find_package(carma_cmake_common REQUIRED)
carma_check_ros_version(2)
carma_package()

## Find ament macros and libraries
find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)

# Generate Messages
file(GLOB msg_files msg/*.msg)
set(msgs )
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
ament_export_dependencies(rosidl_default_runtime)
ament_package()


install(
  FILES rule.yml
  DESTINATION share/${PROJECT_NAME})
