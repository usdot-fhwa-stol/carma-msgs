#
# DTime.msg
#
# J2735 2024 message format.
#

# DTime ::= SEQUENCE {
#    hour    DHour,
#    minute  DMinute,
#    second  DSecond,
#    offset  DOffset  OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_OFFSET = 1

j2735_v2x_msgs/DHour hour

j2735_v2x_msgs/DMinute minute

j2735_v2x_msgs/DSecond second

j2735_v2x_msgs/DOffset offset
