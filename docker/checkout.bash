#!/bin/bash

#  Copyright (C) 2018-2024 LEIDOS.
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

# CARMA packages checkout script
# Optional argument to set the root checkout directory with no ending '/' default is '~'

set -exo pipefail

dir=~
BRANCH=develop
while [[ $# -gt 0 ]]; do
      arg="$1"
      case $arg in
            -b|--branch)
                  BRANCH=$2
                  shift
                  shift
            ;;
            -r|--root)
                  dir=$2
                  shift
                  shift
            ;;
            -d)  # This is used to ignore -d arg from build-image.sh to avoid conflict with -b arg used in dockerfile.
                  shift
            ;;
            *)
      esac
done

cd /home/carma/
# Sparse checkout to only get the messages we need
# raptor_dbw_msgs (ROS1)
git clone --depth 1 --filter=blob:none --sparse https://github.com/NewEagleRaptor/raptor-dbw-ros.git --depth 1 --branch master
cd /home/carma/raptor-dbw-ros
git sparse-checkout init --cone
git sparse-checkout set raptor_dbw_msgs
cd /home/carma

# raptor_dbw_msgs (ROS2)
git clone --depth 1 --filter=blob:none --sparse https://github.com/NewEagleRaptor/raptor-dbw-ros2.git --depth 1 --branch foxy
cd /home/carma/raptor-dbw-ros2
git sparse-checkout init --cone
git sparse-checkout set raptor_dbw_msgs
cd /home/carma

# dbw_mkz_msgs (ROS1 and ROS2)
git clone --depth 1 --filter=blob:none --sparse https://github.com/usdot-fhwa-stol/carma-dbw-mkz-ros.git --depth 1 --branch 1.2.4-ros2
cd /home/carma/carma-dbw-mkz-ros
git sparse-checkout init --cone
git sparse-checkout set dbw_mkz_msgs
cd /home/carma

# clone carma repos
# Currently autoware.ai is being cloned into a hardcoded directory
# that the install script is also hardcoded to look for. This should be uncoupled:
# https://github.com/usdot-fhwa-stol/carma-platform/issues/2374
if [[ "$BRANCH" == "develop" ]]; then
      git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch carma-"$BRANCH"
      cd ${dir}/src
      git clone  https://github.com/usdot-fhwa-stol/ros1_bridge.git --depth 1 --branch "$BRANCH"
elif [[ "$BRANCH" == "master" ]]; then
      git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch carma-"$BRANCH"
      cd ${dir}/src
      git clone https://github.com/usdot-fhwa-stol/ros1_bridge.git  --depth 1 --branch carma-"$BRANCH"
else
      git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch "$BRANCH"
      cd ${dir}/src
      git clone https://github.com/usdot-fhwa-stol/ros1_bridge.git  --depth 1 --branch "$BRANCH"
fi
