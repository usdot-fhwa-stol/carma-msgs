# Maneuver.msg
#
# Message defining a Maneuver for use in CARMA planning. 
# This message wraps the possible maneuver types
#

# the type of maneuver
uint8 type

# enum values for type:
uint8 UNKNOWN = 0 # Indicates a poorly formed message. Do we need this?
uint8 LANE_FOLLOWING = 1
uint8 LANE_CHANGE = 2
uint8 INTERSECTION_TRANSIT_STRAIGHT = 3
uint8 INTERSECTION_TRANSIT_LEFT_TURN = 4
uint8 INTERSECTION_TRANSIT_RIGHT_TURN = 5
uint8 STOP_AND_WAIT = 6
# Remaining enum values reserved for future use

# The maneuver type objects which this maneuver wraps
# Only one of these fields will be populated at a time to match the maneuver type of this message
cav_msgs/LaneFollowingManeuver lane_following_maneuver
cav_msgs/LaneChangeManeuver lane_change_maneuver
cav_msgs/IntersectionTransitStraightManeuver intersection_transit_straight_maneuver
cav_msgs/IntersectionTransitLeftTurnManeuver intersection_transit_left_turn_maneuver
cav_msgs/IntersectionTransitRightTurnManeuver intersection_transit_right_turn_maneuver
cav_msgs/StopAndWaitManeuver stop_and_wait_maneuver
