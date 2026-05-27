#
# RoadSafetyMessage.msg
#
# J2735 2024 message format.
#

# RoadSafetyMessage ::= SEQUENCE {
#    commonContainer     CommonContainer,
#    content             SEQUENCE (SIZE(1..4)) OF ContentContainer,
#    ...
#    }

std_msgs/Header header

j2735_v2x_msgs/CommonContainer common_container

j2735_v2x_msgs/ContentContainer[] content

uint8 CONTENT_MIN_SIZE = 1
uint8 CONTENT_MAX_SIZE = 4
