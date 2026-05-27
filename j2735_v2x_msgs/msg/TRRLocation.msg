#
# TRRLocation.msg
#
# J2735 2024 message format (J3186).
#

# TRRLocation ::= CHOICE {
#    tRRLocationType1 TRRLocationType1,
#    tRRLocationType2 TRRLocationType2,
#    tRRLocationType3 TRRLocationType3,
#    ...
#    }

uint8 choice
uint8 TRR_LOCATION_TYPE_1 = 0
uint8 TRR_LOCATION_TYPE_2 = 1
uint8 TRR_LOCATION_TYPE_3 = 2

j2735_v2x_msgs/TRRLocationType1 trr_location_type_1

j2735_v2x_msgs/TRRLocationType2 trr_location_type_2

j2735_v2x_msgs/TRRLocationType3 trr_location_type_3
