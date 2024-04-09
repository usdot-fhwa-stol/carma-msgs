#
# DetectedObjectCommonData.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of DetectedObjectCommonData from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# DetectedObjectCommonData::= SEQUENCE {
#    objType ObjectType,
#    objTypeCfd ClassificationConfidence,
#    objectID ObjectID,
#    -- temporary ID assigned by source
#    measurementTime MeasurementTimeOffset,
#    -- Detection time
#    timeConfidence TimeConfidence,
#    pos PositionOffsetXYZ,
#    posConfidence PositionConfidenceSet,
#    speed Speed,
#    speedConfidence SpeedConfidence,
#    speedZ Speed OPTIONAL,
#    speedConfidenceZ SpeedConfidence OPTIONAL,
#    heading Heading,
#    headingConf HeadingConfidence,
#    accel4way AccelerationSet4Way OPTIONAL,
#    accCfdX AccelerationConfidence OPTIONAL,
#    accCfdY AccelerationConfidence OPTIONAL,
#    accCfdZ AccelerationConfidence OPTIONAL,
#    accCfdYaw YawRateConfidence OPTIONAL,
# }

j3224_v2x_msgs/ObjectType obj_type

j3224_v2x_msgs/ClassificationConfidence obj_type_cfd

j3224_v2x_msgs/ObjectID detected_id 

carma_v2x_msgs/MeasurementTimeOffset measurement_time

j2735_v2x_msgs/TimeConfidence time_confidence

carma_v2x_msgs/PositionOffsetXYZ pos

j2735_v2x_msgs/PositionConfidenceSet pos_confidence

carma_v2x_msgs/Speed speed 

j2735_v2x_msgs/SpeedConfidence speed_confidence

carma_v2x_msgs/Heading heading

j2735_v2x_msgs/HeadingConfidence heading_conf

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_SPEED_Z) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_SPEED_Z
uint8 presence_vector

uint8 HAS_SPEED_Z = 1
uint8 HAS_SPEED_CONFIDENCE_Z = 2
uint8 HAS_ACCEL_4_WAY = 4
uint8 HAS_ACC_CFD_X = 8
uint8 HAS_ACC_CFD_Y = 16
uint8 HAS_ACC_CFD_Z = 32
uint8 HAS_ACC_CFD_YAW = 64

carma_v2x_msgs/Speed speed_z

j2735_v2x_msgs/SpeedConfidence speed_confidence_z

carma_v2x_msgs/AccelerationSet4Way accel_4_way

j2735_v2x_msgs/AccelerationConfidence acc_cfd_x

j2735_v2x_msgs/AccelerationConfidence acc_cfd_y

j2735_v2x_msgs/AccelerationConfidence acc_cfd_z

j2735_v2x_msgs/YawRateConfidence acc_cfd_yaw