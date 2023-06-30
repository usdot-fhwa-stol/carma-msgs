#
# PositionOffsetXYZ.msg
#
# J3224 2020 message format.
#

# PositionOffsetXYZ ::= SEQUENCE {
#   offsetX ObjectDistance,
#   offsetY ObjectDistance,
#   offsetZ ObjectDistance OPTIONAL
# } 

j3224_v2x_msgs/ObjectDistance offset_x 

j3224_v2x_msgs/ObjectDistance offset_y

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_OFFSET_Z) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_OFFSET_Z
uint8 presence_vector

uint8 HAS_OFFSET_Z = 1

j3224_v2x_msgs/ObjectDistance offset_z