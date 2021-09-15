# Copyright 2021 Leidos Inc.
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

macro(carma_check_ros_version SUPPORTED_ROS_VERSION)
  
  find_package(ros_environment REQUIRED)

  set(ROS_VERSION $ENV{ROS_VERSION})

  if( NOT ( ${ROS_VERSION} EQUAL ${SUPPORTED_ROS_VERSION} ) )

    message("Skipping build of " ${PROJECT_NAME} " as only ROS " ${SUPPORTED_ROS_VERSION} " is supported. Detected version is ROS " ${ROS_VERSION})

    return()

  endif()

endmacro()