#
# UpcomingLaneChangeStatus.msg
#

# downtrack until next lanechange
float64 downtrack_until_lanechange

# last recorded lanechange downtrack
float64 last_recorded_lanechange_downtrack

# choice for lane change
uint8 lane_change

# enums for lane change
uint8 NONE = 0

uint8 LEFT = 0

uint8 RIGHT= 1
