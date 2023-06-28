#
# ObstacleSize.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of ObstacleSize from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# ObstacleSize ::= SEQUENCE {
#   width SizeValue,
#   length SizeValue,
#   height SizeValue OPTIONAL
# }

cav_msgs/SizeValue width 

cav_msgs/SizeValue length 

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_HEIGHT) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_HEIGHT
uint8 presence_vector

uint8 HAS_HEIGHT = 1

cav_msgs/SizeValue height