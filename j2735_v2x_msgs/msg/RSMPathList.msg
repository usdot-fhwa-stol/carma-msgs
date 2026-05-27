#
# RSMPathList.msg
#
# J2735 2024 message format.
#

# PathList ::= SEQUENCE (SIZE(1..10), ...) OF Path

j2735_v2x_msgs/RSMPath[] paths

uint8 PATHS_MIN_SIZE = 1
uint8 PATHS_MAX_SIZE = 10
