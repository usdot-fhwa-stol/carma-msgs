# LaneFollowingManeuver.msg
#
# Message defining a Lane Following Maneuver for use in CARMA planning. 
#

# The common parameters of this maneuver
carma_planning_msgs/ManeuverParameters parameters

# Approximate starting state of the maneuver
float64 start_dist # downtrack distance in m
float64 start_speed # vehicle speed in m/s
builtin_interfaces/Time start_time

# Approximate ending state of the maneuver
float64 end_dist
float64 end_speed
builtin_interfaces/Time end_time

# GUID of the lane of this maneuver
string[] lane_ids
