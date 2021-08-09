#
# Copyright (C) 2018-2021 LEIDOS.
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
project(cav_srvs)
set(CMAKE_CXX_STANDARD 1 4)

find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(cav_msgs REQUIRED)

file(GLOB srv_files srv/*.srv)
set(srvs )
foreach(filePath ${srv_files})
  get_filename_component(name ${filePath} NAME)
  set(srvs ${srvs} srv/${name})
endforeach(filePath)

# Generate services in the 'srv' folder
rosidl_generate_interfaces(
    ${PROJECT_NAME}
    ${srvs}
    DEPENDENCIES
        std_msgs
        cav_msgs
)
ament_export_dependencies(rosidl_default_runtime)
ament_package()

