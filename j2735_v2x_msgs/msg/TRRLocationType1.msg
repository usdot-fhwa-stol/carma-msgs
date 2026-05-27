#
# TRRLocationType1.msg
#
# J2735 2024 message format (J3186).
#

# TRRLocationType1 ::= SEQUENCE {
#    tRRLength         TRRLength,
#    frontSidePosition PositionOffsetXYZ,
#    laneOffset        LaneOffset,
#    tRRMovement       Speed OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_TRR_MOVEMENT = 1

j2735_v2x_msgs/TRRLength trr_length

j2735_v2x_msgs/PositionOffsetXYZ front_side_position

j2735_v2x_msgs/LaneOffset lane_offset

j2735_v2x_msgs/Speed trr_movement
