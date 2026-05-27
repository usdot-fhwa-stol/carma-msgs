#
# TRRLocationType2.msg
#
# J2735 2024 message format (J3186).
#

# TRRLocationType2 ::= SEQUENCE {
#    safetyGap        TRRLength,
#    frontSideVehicle SurroundingVehicleInfo OPTIONAL,
#    rearSideVehicle  SurroundingVehicleInfo OPTIONAL,
#    tRRLength        TRRLength              OPTIONAL,
#    laneOffset       LaneOffset,
#    ...
#    }

uint8 presence_vector

uint8 HAS_FRONT_SIDE_VEHICLE = 1
uint8 HAS_REAR_SIDE_VEHICLE = 2
uint8 HAS_TRR_LENGTH = 4

j2735_v2x_msgs/TRRLength safety_gap

j2735_v2x_msgs/SurroundingVehicleInfo front_side_vehicle

j2735_v2x_msgs/SurroundingVehicleInfo rear_side_vehicle

j2735_v2x_msgs/TRRLength trr_length

j2735_v2x_msgs/LaneOffset lane_offset
