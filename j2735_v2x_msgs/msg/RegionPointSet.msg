#
# RegionPointSet.msg
#
# J2735 2024 message format.
#

# RegionPointSet ::= SEQUENCE {
#    anchor           Position3D  OPTIONAL,
#    scale            Zoom        OPTIONAL,
#    nodeList         RegionList,
#    ...
#    }

uint8 presence_vector

uint8 HAS_ANCHOR = 1
uint8 HAS_SCALE = 2

j2735_v2x_msgs/Position3D anchor

j2735_v2x_msgs/Zoom scale

j2735_v2x_msgs/RegionList node_list
