#
# TravelerDataFrameNewPartIIIContent.msg
#
# J2735 2024 message format.
#

# TravelerDataFrameNewPartIIIContent ::= CHOICE {
#    frictionInfo    FrictionInformation,
#    ...
#    }

uint8 choice

uint8 FRICTION_INFO = 0

j2735_v2x_msgs/FrictionInformation friction_info
