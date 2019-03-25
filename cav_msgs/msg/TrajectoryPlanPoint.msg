# TrajectoryPlanPoint.msg

# This message describes a 2D point on plugin's trajectory plan
# It is assmued that this point is in the MAP frame

# X coordinate of the trajectory plan point
float64 x

# Y coordinate of the trajectory plan point
float64 y

# Desired time when reaching the trajectory plan point
uint64 timestamp

# Lane Id of the trajectory plan point
uint8 lane_id

# Controller plugin name required by the trajectory plan point
string controller_plugin_name

# Planner plugin name of the trajectory plan point
string planner_plugin_name
