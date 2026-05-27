#
# NodeAttributeSetLL.msg
#
# J2735 2024 message format.
#

# NodeAttributeSetLL ::= SEQUENCE {
#    localNode    NodeAttributeLLList     OPTIONAL,
#    disabled     SegmentAttributeLLList  OPTIONAL,
#    enabled      SegmentAttributeLLList  OPTIONAL,
#    data         LaneDataAttributeList  OPTIONAL,
#    dWidth       Offset-B10             OPTIONAL,
#    dElevation   Offset-B10             OPTIONAL,
#    regional     SEQUENCE (SIZE(1..4)) OF RegionalExtension OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_LOCAL_NODE = 1
uint8 HAS_DISABLED = 2
uint8 HAS_ENABLED = 4
uint8 HAS_DATA = 8
uint8 HAS_D_WIDTH = 16
uint8 HAS_D_ELEVATION = 32
uint8 HAS_REGIONAL = 64

j2735_v2x_msgs/NodeAttributeLLList local_node

j2735_v2x_msgs/SegmentAttributeLLList disabled

j2735_v2x_msgs/SegmentAttributeLLList enabled

j2735_v2x_msgs/LaneDataAttributeList data

j2735_v2x_msgs/OffsetB10 d_width

j2735_v2x_msgs/OffsetB10 d_elevation

j2735_v2x_msgs/RegionalExtension[] regional
