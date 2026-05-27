#
# CurrentStateData.msg
#
# Modified J2735 2024 message format (J3186), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 presence_vector

uint8 HAS_EXECUTANT_VEH_POS = 1
uint8 HAS_EXECUTANT_VEH_POS_CONFIDENCE = 2
uint8 HAS_ACCEL_4WAY = 4

carma_v2x_msgs/PositionOffsetXYZ executant_veh_pos

j2735_v2x_msgs/PositionConfidenceSet executant_veh_pos_confidence

carma_v2x_msgs/Speed speed

carma_v2x_msgs/Heading heading

carma_v2x_msgs/AccelerationSet4Way accel_4way

j2735_v2x_msgs/VehicleSize size
