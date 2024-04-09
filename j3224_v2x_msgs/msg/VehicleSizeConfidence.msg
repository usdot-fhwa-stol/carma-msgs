#
# VehicleSizeConfidence.msg
#
# J3224 2020 message format.
#

# VehicleSizeConfidence ::= SEQUENCE {
#   vehicleWidthConfidence SizeValueConfidence,
#   vehicleLengthConfidence SizeValueConfidence,
#   vehicleHeightConfidence SizeValueConfidence OPTIONAL
# }

j3224_v2x_msgs/SizeValueConfidence vehicle_width_confidence

j3224_v2x_msgs/SizeValueConfidence vehicle_length_confidence

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_VEHICLE_HEIGHT_CONFIDENCE) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_VEHICLE_HEIGHT_CONFIDENCE
uint8 presence_vector

uint8 HAS_VEHICLE_HEIGHT_CONFIDENCE = 1

j3224_v2x_msgs/SizeValueConfidence vehicle_height_confidence