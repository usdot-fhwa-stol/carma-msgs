#
# NodeListLL.msg
#
# J2735 2024 message format.
#

# NodeListLL ::= CHOICE {
#    nodes     NodeSetLL,
#    ...
#    }

uint8 choice

uint8 NODES = 0

j2735_v2x_msgs/NodeSetLL nodes
