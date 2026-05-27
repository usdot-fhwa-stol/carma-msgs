#
# RSMPath.msg
#
# J2735 2024 message format — carma unit-converted.
#

# Path ::= SEQUENCE {
#    pathWidth       INTEGER (0..1000),  -- converted from 10cm units to meters
#    pathPoints      PathPoints,
#    }

float32 path_width

float32 PATH_WIDTH_MAX = 100.0

j2735_v2x_msgs/PathPoints path_points
