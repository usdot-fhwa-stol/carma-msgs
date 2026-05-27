#
# SnapShot.msg
#
# carma_v2x_msgs: SI-converted version.
#

uint8 presence_vector

uint8 HAS_SAFETY_EXT = 1
uint8 HAS_DATA_SET = 2
uint8 HAS_WEATHER_DATA = 4

carma_v2x_msgs/FullPositionVector the_position

carma_v2x_msgs/VehicleSafetyExtensions safety_ext

j2735_v2x_msgs/VehicleStatus data_set

carma_v2x_msgs/NtcipEssData weather_data
