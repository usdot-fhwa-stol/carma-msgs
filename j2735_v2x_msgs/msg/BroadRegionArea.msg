#
# BroadRegionArea.msg
#
# J2735 2024 message format.
#

# BroadRegionArea ::= CHOICE {
#    polygon   RSMPolygon,
#    circle    Circle,
#    ...
#    }

uint8 choice

uint8 POLYGON = 0
uint8 CIRCLE = 1

j2735_v2x_msgs/RSMPolygon polygon

j2735_v2x_msgs/Circle circle
