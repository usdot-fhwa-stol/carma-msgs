# TrajectoryPlan.msg

# This message describes a trajectory planned by one or more plugins
# Each trajectory plan contains an unique ID and a list of trajectory plan points

# standard ROS header
std_msgs/Header header

# The unique GUID of this trajectory
string  trajectory_id

# A list of trajectory plan points describe the detailed trajectory plan
cav_msgs/TrajectoryPlanPoint[] trajectory_points
