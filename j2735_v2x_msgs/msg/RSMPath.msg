#
# RSMPath.msg
#
# J2735 2024 message format.
#

# Path ::= SEQUENCE {
#    pathWidth       INTEGER (0..1000),
#    pathPoints      PathPoints,
#    ...
#    }

uint16 path_width

uint16 PATH_WIDTH_MAX = 1000

j2735_v2x_msgs/PathPoints path_points
