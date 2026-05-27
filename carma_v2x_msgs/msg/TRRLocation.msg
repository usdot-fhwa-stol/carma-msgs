#
# TRRLocation.msg
#
# Modified J2735 2024 message format (J3186), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 choice
uint8 TRR_LOCATION_TYPE_1 = 0
uint8 TRR_LOCATION_TYPE_2 = 1
uint8 TRR_LOCATION_TYPE_3 = 2

carma_v2x_msgs/TRRLocationType1 trr_location_type_1

carma_v2x_msgs/TRRLocationType2 trr_location_type_2

carma_v2x_msgs/TRRLocationType3 trr_location_type_3
