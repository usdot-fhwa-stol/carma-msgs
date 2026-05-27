#
# SurroundingVehicleInfo.msg
#
# J2735 2024 message format (J3186).
#

# SurroundingVehicleInfo ::= SEQUENCE {
#    surroundingVehicleID       TemporaryID,
#    surroundingVehiclePosition PositionOffsetXYZ,
#    surroundingVehicleSize     VehicleSize,
#    ...
#    }

j2735_v2x_msgs/TemporaryID surrounding_vehicle_id

j2735_v2x_msgs/PositionOffsetXYZ surrounding_vehicle_position

j2735_v2x_msgs/VehicleSize surrounding_vehicle_size
