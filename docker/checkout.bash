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

cd ${dir}/src


# clone carma repos
# Currently autoware.ai is being cloned into a hardcoded directory
# that the install script is also hardcoded to look for. This should be uncoupled:
# https://github.com/usdot-fhwa-stol/carma-platform/issues/2374
if [[ "$BRANCH" == "develop" ]]; then
      cd /home/carma/
      git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch carma-"$BRANCH"
      cd ${dir}/src
      git clone  https://github.com/usdot-fhwa-stol/ros1_bridge.git --depth 1 --branch "develop-humble-buildable"
elif [[ "$BRANCH" == "master" ]]; then
      cd /home/carma/
      git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch carma-"$BRANCH"
      cd ${dir}/src
      git clone https://github.com/usdot-fhwa-stol/ros1_bridge.git  --depth 1 --branch carma-"$BRANCH"
else
      cd /home/carma/
      git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch "$BRANCH"
      cd ${dir}/src
      git clone https://github.com/usdot-fhwa-stol/ros1_bridge.git  --depth 1 --branch "develop-humble-buildable"
fi

# Since Noetic is not supported on Linux 22.04, prepare to manually install dependency packages
# Using different method to checkout to make it clear not to change it during release process
vcs import --input /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/noetic-dependencies.repos /home/carma/.base-image/ros1_msgs_ws/src/