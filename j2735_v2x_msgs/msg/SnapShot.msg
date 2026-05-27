#
# SnapShot.msg
#
# J2735 2024 message format.
#

# SnapShot ::= SEQUENCE {
#    thePosition     FullPositionVector,
#    safetyExt       VehicleSafetyExtensions    OPTIONAL,
#    dataSet         VehicleStatus              OPTIONAL,
#    ...,
#    weatherData     NtcipEssData               OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_SAFETY_EXT = 1
uint8 HAS_DATA_SET = 2
uint8 HAS_WEATHER_DATA = 4

j2735_v2x_msgs/FullPositionVector the_position

j2735_v2x_msgs/VehicleSafetyExtensions safety_ext

j2735_v2x_msgs/VehicleStatus data_set

j2735_v2x_msgs/NtcipEssData weather_data
