#
# LaneInfo.msg
#
# J2735 2024 message format.
#

# LaneInfo ::= SEQUENCE {
#    lanePosition      RSMLanePosition,
#    laneClosed        LaneClosed,
#    laneCloseOffset   ObstacleDistance OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_LANE_CLOSE_OFFSET = 1

j2735_v2x_msgs/RSMLanePosition lane_position

j2735_v2x_msgs/LaneClosed lane_closed

j2735_v2x_msgs/ObstacleDistance lane_close_offset
