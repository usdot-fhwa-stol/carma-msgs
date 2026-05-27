#
# CommonContainer.msg
#
# J2735 2024 message format.
#

# CommonContainer ::= SEQUENCE {
#    eventInfo         EventInfo,
#    regionInfo        SEQUENCE (SIZE(1..4)) OF RegionInfo,
#    crossLinking      CrossLinking  OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_CROSS_LINKING = 1

j2735_v2x_msgs/EventInfo event_info

j2735_v2x_msgs/RegionInfo[] region_info

uint8 REGION_INFO_MIN_SIZE = 1
uint8 REGION_INFO_MAX_SIZE = 4

j2735_v2x_msgs/CrossLinking cross_linking
