#
# PositionOffsetXYZ.msg
#
# J2735 2024 message format (J3186).
#

# PositionOffsetXYZ ::= SEQUENCE {
#    offsetX     ObjectDistance,
#    offsetY     ObjectDistance,
#    offsetZ     ObjectDistance OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_OFFSET_Z = 1

j2735_v2x_msgs/ObjectDistance offset_x

j2735_v2x_msgs/ObjectDistance offset_y

j2735_v2x_msgs/ObjectDistance offset_z
