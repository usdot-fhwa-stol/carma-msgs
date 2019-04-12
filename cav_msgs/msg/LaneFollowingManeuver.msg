# LaneFollowingManeuver.msg
#
# Message defining a Lane Following Maneuver for use in CARMA planning. 
#

# The common parameters of this maneuver
cav_msgs/ManeuverParameters parameters

# Approximate starting state of the maneuver
float64 start_dist
float64 start_speed
time start_time

# Approximate ending state of the maneuver
float64 end_dist
float64 end_speed
time end_time

# GUID of the lane of this maneuver
string lane_id
