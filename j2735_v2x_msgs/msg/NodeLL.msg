#
# NodeLL.msg
#
# J2735 2024 message format.
#

# NodeLL ::= SEQUENCE {
#    delta       NodeOffsetPointLL,
#    attributes  NodeAttributeSetLL OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_ATTRIBUTES = 1

j2735_v2x_msgs/NodeOffsetPointLL delta

j2735_v2x_msgs/NodeAttributeSetLL attributes
