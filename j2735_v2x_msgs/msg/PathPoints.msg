#
# PathPoints.msg
#
# J2735 2024 message format.
#

# PathPoints ::= SEQUENCE (SIZE(2..63), ...) OF NodePointLLE

j2735_v2x_msgs/NodePointLLE[] path_points

uint8 PATH_POINTS_MIN_SIZE = 2
uint8 PATH_POINTS_MAX_SIZE = 63
