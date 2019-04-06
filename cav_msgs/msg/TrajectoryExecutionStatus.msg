# TrajectoryExecutionStatus.msg

# This message describes the current trajectory execution status.

# standard ROS header
std_msgs/Header header

# A boolean value indicates if the plugin is active
bool is_active

# The unique GUID of the current following trajectory
string  current_trajectory_id

# The X and Y location of the current planning horizon; unit: meter
float64 x
float64 y
