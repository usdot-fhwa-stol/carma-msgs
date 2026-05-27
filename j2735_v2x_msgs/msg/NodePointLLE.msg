#
# NodePointLLE.msg
#
# J2735 2024 message format.
#

# NodePointLLE ::= CHOICE {
#    node-3Dabsolute   Position3D,
#    node-3Doffset     Offset3D,
#    ...
#    }

uint8 choice

uint8 NODE_3D_ABSOLUTE = 0
uint8 NODE_3D_OFFSET = 1

j2735_v2x_msgs/Position3D node_3d_absolute

j2735_v2x_msgs/Offset3D node_3d_offset
