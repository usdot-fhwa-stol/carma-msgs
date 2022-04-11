# PlanType.msg
#
# Helper message for MobilityIntro.msg to define the specifics of a type of coordinated plan.
#

# Variable which can be used to store a specific plan type value.
uint8 type

# enumeration values for plan type:
uint8       UNKNOWN = 0
uint8       CHANGE_LANE_LEFT = 1
uint8       CHANGE_LANE_RIGHT = 2
uint8       JOIN_PLATOON_AT_REAR = 3
uint8       PLATOON_FOLLOWER_JOIN = 4

# UCLA: ADDED FOR FRONTAL JOIN
uint8       JOIN_PLATOON_FROM_FRONT= 5
uint8       PLATOON_FRONT_JOIN = 6

# UCLA: ADDED FOR CUT-IN JOIN
uint8       CUT_IN_FROM_DIFFERENT_LANE = 7
uint8       PLATOON_CUTIN_JOIN = 8
uint8       STOP_CREATE_GAP = 9
uint8       CUT_IN_FRONT_DONE = 10
uint8       CUT_IN_MID_OR_REAR_DONE = 11

# UCLA: ADDED FOR DEPARTURE
uint8       PLATOON_DEPARTURE = 12
uint8       DELETE_MEMBER = 13
