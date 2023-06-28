#
# PositionOffsetXYZ.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PositionOffsetXYZ from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# PositionOffsetXYZ ::= SEQUENCE {
#   offsetX ObjectDistance,
#   offsetY ObjectDistance,
#   offsetZ ObjectDistance OPTIONAL
# } 

carma_v2x_msgs/ObjectDistance offset_x 

carma_v2x_msgs/ObjectDistance offset_y

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_OFFSET_Z) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_OFFSET_Z
uint8 presence_vector

uint8 HAS_OFFSET_Z = 1

carma_v2x_msgs/ObjectDistance offset_z