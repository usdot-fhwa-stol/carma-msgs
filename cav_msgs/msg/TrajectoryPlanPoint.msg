# TrajectoryPlanPoint.msg

# This message describes a 2D point on plugin's trajectory plan
# It is assmued that this point is in the MAP frame

# X coordinate of the trajectory plan point
float64 x

# Y coordinate of the trajectory plan point
float64 y

# Target time when the host vehicle reaches the trajectory plan point
uint64 target_time

# Lane Id of the trajectory plan point based on HD map lane descriptions
string lane_id

# Controller plugin name required by the trajectory plan point
string controller_plugin_name

# Planner plugin name of the trajectory plan point
string planner_plugin_name
