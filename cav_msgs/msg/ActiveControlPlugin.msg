# ActiveControlPlugin.msg

# This message describes the current active control plugin and its trajectory execution status.

# Standard ROS header
std_msgs/Header header

# Name of the active control plugin
bool is_active

# GUID of the current following trajectory
string  current_trajectory_id
