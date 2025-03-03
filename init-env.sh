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

# Sets all environment variables and sources scripts necessary for CARMA to operate
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib/

# Export QT X11 Forwarding variables
export QT_X11_NO_MITSHM=1

# Set Cyclone DDS as default RMW implementation
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# Source ROS2 Humble setup
if [ -f "/opt/ros/humble/setup.bash" ]; then
    source /opt/ros/humble/setup.bash
fi

# Always source environment variables as last step
if [ -f "/opt/carma/vehicle/config/carma.env" ]; then
    source /opt/carma/vehicle/config/carma.env
fi
