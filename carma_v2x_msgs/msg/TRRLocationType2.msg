#
# TRRLocationType2.msg
#
# Modified J2735 2024 message format (J3186), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 presence_vector

uint8 HAS_FRONT_SIDE_VEHICLE = 1
uint8 HAS_REAR_SIDE_VEHICLE = 2
uint8 HAS_TRR_LENGTH = 4

# Safety gap in meters, converted from 0.1 m LSB
float32 safety_gap

carma_v2x_msgs/SurroundingVehicleInfo front_side_vehicle

carma_v2x_msgs/SurroundingVehicleInfo rear_side_vehicle

# TRR length in meters, converted from 0.1 m LSB
float32 trr_length

j2735_v2x_msgs/LaneOffset lane_offset
