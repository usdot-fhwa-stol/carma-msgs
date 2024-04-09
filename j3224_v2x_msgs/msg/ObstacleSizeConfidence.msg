#
# ObstacleSizeConfidence.msg
#
# J3224 2020 message format.
#

# ObstacleSizeConfidence ::= SEQUENCE {
#   widthConfidence SizeValueConfidence,
#   lengthConfidence SizeValueConfidence,
#   heightConfidence SizeValueConfidence OPTIONAL
# } 

j3224_v2x_msgs/SizeValueConfidence width_confidence

j3224_v2x_msgs/SizeValueConfidence length_confidence

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_HEIGHT_CONFIDENCE) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_HEIGHT_CONFIDENCE
uint8 presence_vector

uint8 HAS_HEIGHT_CONFIDENCE = 1

j3224_v2x_msgs/SizeValueConfidence height_confidence
