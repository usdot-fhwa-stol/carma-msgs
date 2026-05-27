#
# LaneClosureContainer.msg
#
# J2735 2024 message format.
#

# LaneClosureContainer ::= SEQUENCE {
#    laneStatus          SEQUENCE (SIZE(1..10, ...)) OF LaneInfo OPTIONAL,
#    laneStatusVaries    Activity    OPTIONAL,
#    closureRegion       RegionInfo,
#    ...
#    }

uint8 presence_vector

uint8 HAS_LANE_STATUS = 1
uint8 HAS_LANE_STATUS_VARIES = 2

j2735_v2x_msgs/LaneInfo[] lane_status

uint8 LANE_STATUS_MIN_SIZE = 1
uint8 LANE_STATUS_MAX_SIZE = 10

j2735_v2x_msgs/Activity lane_status_varies

j2735_v2x_msgs/RegionInfo closure_region
