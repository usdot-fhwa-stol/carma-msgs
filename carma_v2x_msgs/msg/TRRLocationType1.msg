#
# TRRLocationType1.msg
#
# Modified J2735 2024 message format (J3186), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 presence_vector

uint8 HAS_TRR_MOVEMENT = 1

# TRR length in meters, converted from 0.1 m LSB
float32 trr_length

carma_v2x_msgs/PositionOffsetXYZ front_side_position

j2735_v2x_msgs/LaneOffset lane_offset

carma_v2x_msgs/Speed trr_movement
