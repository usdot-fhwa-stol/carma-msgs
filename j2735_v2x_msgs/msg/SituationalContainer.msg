#
# SituationalContainer.msg
#
# J2735 2024 message format.
#

# SituationalContainer ::= SEQUENCE {
#    obstructions        Obstructions          OPTIONAL,
#    visibility          NTCIPEssVisibility    OPTIONAL,
#    peoplePresent       Activity              OPTIONAL,
#    anomalousTraffic    Activity              OPTIONAL,
#    applicableRegion    RegionInfo,
#    ...
#    }

uint8 presence_vector

uint8 HAS_OBSTRUCTIONS = 1
uint8 HAS_VISIBILITY = 2
uint8 HAS_PEOPLE_PRESENT = 4
uint8 HAS_ANOMALOUS_TRAFFIC = 8

j2735_v2x_msgs/Obstructions obstructions

j2735_v2x_msgs/NTCIPEssVisibility visibility

j2735_v2x_msgs/Activity people_present

j2735_v2x_msgs/Activity anomalous_traffic

j2735_v2x_msgs/RegionInfo applicable_region
