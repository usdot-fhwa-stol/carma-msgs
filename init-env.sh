#!/bin/bash

#  Copyright (C) 2018-2025 LEIDOS.
#
#  Licensed under the Apache License, Version 2.0 (the "License"); you may not
#  use this file except in compliance with the License. You may obtain a copy of
#  the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#  License for the specific language governing permissions and limitations under
#  the License.

# Set Cyclone DDS as default RMW implementation
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# Source ROS2 Humble setup
if [ -f "/opt/ros/humble/setup.bash" ]; then
    source /opt/ros/humble/setup.bash
fi

# Source the ROS1_bridge setup.bash that has CARMA msgs
if [ -f "/home/carma/.base-image/workspace/install/setup.bash" ]; then
    source /home/carma/.base-image/workspace/install/setup.bash
fi

# Always source environment variables as last step
if [ -f "/opt/carma/vehicle/config/carma.env" ]; then
    source /opt/carma/vehicle/config/carma.env
fi
