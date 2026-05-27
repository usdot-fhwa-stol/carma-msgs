#
# AreaType.msg
#
# J2735 2024 message format.
#

# AreaType ::= CHOICE {
#    broadRegion   BroadRegion,
#    paths         PathList,
#    ...
#    }

uint8 choice

uint8 BROAD_REGION = 0
uint8 PATHS = 1

j2735_v2x_msgs/BroadRegion broad_region

j2735_v2x_msgs/RSMPathList paths
