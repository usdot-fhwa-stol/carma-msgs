#
# OffsetSystem.msg
#
# J2735 2024 message format.
#

# OffsetSystem ::= SEQUENCE {
#    scale      Zoom OPTIONAL,
#    offset     CHOICE {
#       xy        NodeListXY,
#       ll        NodeListLL
#       }
#    }

uint8 presence_vector

uint8 HAS_SCALE = 1

j2735_v2x_msgs/Zoom scale

uint8 offset_choice

uint8 XY = 0
uint8 LL = 1

j2735_v2x_msgs/NodeListXY xy

j2735_v2x_msgs/NodeListLL ll
