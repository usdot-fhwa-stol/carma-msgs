#
# ObstacleSize.msg
#
# J3224 2020 message format.
#

# ObstacleSize ::= SEQUENCE {
#   width SizeValue,
#   length SizeValue,
#   height SizeValue OPTIONAL
# }

j3224_v2x_msgs/SizeValue width 

j3224_v2x_msgs/SizeValue length 

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_HEIGHT) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_HEIGHT
uint8 presence_vector

uint8 HAS_HEIGHT = 1

j3224_v2x_msgs/SizeValue height