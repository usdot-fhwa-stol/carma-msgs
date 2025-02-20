#!/bin/bash
set -e

# Prepare workspace for ROS Noetic dependencies and Autoware messages
mkdir -p /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai

# Copy Autoware.ai messages into ROS1 workspace
cp -R /home/carma/autoware.ai/messages /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_common_msgs /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_recognition /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
cp -R /home/carma/raptor-dbw-ros/raptor_dbw_msgs /home/carma/.base-image/ros1_msgs_ws/src/
cp -R /home/carma/carma-dbw-mkz-ros/dbw_mkz_msgs /home/carma/.base-image/ros1_msgs_ws/src/

# ROS1 CARMA message and dependency setup
cd /home/carma/.base-image/ros1_msgs_ws
unset ROS_DISTRO
export ROS_VERSION=1
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-up-to \
    pcl_msgs \
    autoware_msgs cav_msgs cav_srvs j2735_v2x_msgs can_msgs carma_debug_msgs \
    autoware_lanelet2_msgs carma_cooperative_perception_interfaces \
    automotive_platform_msgs automotive_navigation_msgs pacmod3_msgs dbw_mkz_msgs raptor_dbw_msgs

# ROS2 CARMA message setup
mkdir -p /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai
cp -R /home/carma/autoware.ai/messages /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_common_msgs /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_recognition /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
cp -R /home/carma/raptor-dbw-ros2/raptor_dbw_msgs /home/carma/.base-image/ros2_msgs_ws/src/
cp -R /home/carma/carma-dbw-mkz-ros/dbw_mkz_msgs_ros2 /home/carma/.base-image/ros2_msgs_ws/src/

# Clean up Autoware repository after moving messages
rm -rf /home/carma/autoware.ai/
rm -rf /home/carma/carma-dbw-mkz-ros/
rm -rf /home/carma/raptor-dbw-ros/
rm -rf /home/carma/raptor-dbw-ros2/

cd /home/carma/.base-image/ros2_msgs_ws
source /opt/ros/humble/setup.bash
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-up-to \
    autoware_msgs autoware_lanelet2_msgs can_msgs carma_debug_ros2_msgs carma_driver_msgs \
    carma_localization_msgs carma_msgs carma_perception_msgs carma_planning_msgs carma_v2x_msgs \
    j2735_v2x_msgs carma_cooperative_perception_interfaces \
    dbw_mkz_msgs_ros2 raptor_dbw_msgs

# Build the bridge
source /opt/ros/humble/setup.bash
source /home/carma/.base-image/ros1_msgs_ws/install/local_setup.bash
source /home/carma/.base-image/ros2_msgs_ws/install/local_setup.bash
cd /home/carma/.base-image/workspace/

MEMG=$(printf "%.0f" $(free -g | awk '/^Mem:/{print $2}'));                 \
NPROC=$(nproc);  MIN=$((MEMG<NPROC ? MEMG : NPROC));                        \
echo "Please wait...  running $MIN concurrent jobs to build ros1_bridge";   \
time MAKEFLAGS="-j $MIN" colcon build --event-handlers console_direct+      \
    --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-select ros1_bridge --cmake-force-configure
sudo chmod -R ugo+x /home/carma/.base-image/workspace/install
