#
# ReducedSpeedZoneContainer.msg
#
# J2735 2024 message format.
#

# ReducedSpeedZoneContainer ::= SEQUENCE {
#    speedLimit          RegulatorySpeedLimit,
#    rszRegion           RegionInfo,
#    ...
#    }

j2735_v2x_msgs/RegulatorySpeedLimit speed_limit

j2735_v2x_msgs/RegionInfo rsz_region
