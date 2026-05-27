#
# RSMPolygon.msg
#
# J2735 2024 message format.
#

# RSMPolygon ::= SEQUENCE (SIZE(3..63)) OF NodePointLLE

j2735_v2x_msgs/NodePointLLE[] points

uint8 POINTS_MIN_SIZE = 3
uint8 POINTS_MAX_SIZE = 63
