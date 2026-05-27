#
# ShapePointSet.msg
#
# J2735 2024 message format.
#

# ShapePointSet ::= SEQUENCE {
#    anchor           Position3D     OPTIONAL,
#    laneWidth        LaneWidth      OPTIONAL,
#    directionality   DirectionOfUse OPTIONAL,
#    nodeList         NodeListXY,
#    ...
#    }

uint8 presence_vector

uint8 HAS_ANCHOR = 1
uint8 HAS_LANE_WIDTH = 2
uint8 HAS_DIRECTIONALITY = 4

j2735_v2x_msgs/Position3D anchor

j2735_v2x_msgs/LaneWidth lane_width

j2735_v2x_msgs/DirectionOfUse directionality

j2735_v2x_msgs/NodeListXY node_list
