#!/bin/bash
set -e

# Checkout dependent repositories
/home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/checkout.bash -r /home/carma/.base-image/workspace

# ROS 1 msgs setup
cp -R /home/carma/autoware.ai/messages /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_common_msgs /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_recognition /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/

# ROS 2 msgs setup
mkdir -p ~/.base-image/ros2_msgs_ws/src/autoware.ai
cp -R /home/carma/autoware.ai/messages /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_common_msgs /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
cp -R /home/carma/autoware.ai/jsk_recognition /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/

# Cleanup autoware repo once messages have been moved
rm -rf /home/carma/autoware.ai/

# ROS1 message setup
cd ~/.base-image/ros1_msgs_ws && source /opt/ros/noetic/setup.bash && colcon build --packages-up-to autoware_msgs cav_msgs cav_srvs j2735_msgs can_msgs carma_debug_msgs autoware_lanelet2_msgs carma_cooperative_perception_interfaces

# ROS2 message setup
cd ~/.base-image/ros2_msgs_ws && source /opt/ros/foxy/setup.bash && colcon build --packages-up-to autoware_msgs autoware_lanelet2_msgs can_msgs carma_debug_ros2_msgs carma_driver_msgs carma_localization_msgs carma_msgs carma_perception_msgs carma_planning_msgs carma_v2x_msgs j2735_v2x_msgs carma_cooperative_perception_interfaces

# Build the bridge
source /opt/ros/noetic/setup.bash
source /opt/ros/foxy/setup.bash
source ~/.base-image/ros1_msgs_ws/install/local_setup.bash
source ~/.base-image/ros2_msgs_ws/install/local_setup.bash
cd ~/.base-image/workspace/src
cd ../
sudo apt-get update
colcon build --event-handlers console_direct+ --packages-select ros1_bridge --cmake-force-configure
sudo chmod -R ugo+x ~/.base-image/workspace/install
