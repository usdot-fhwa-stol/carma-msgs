#
# NtcipWind.msg
#
# carma_v2x_msgs: SI-converted version.
#

# Speeds converted from tenths of m/s to float32 m/s

uint8 presence_vector

uint8 HAS_AVG_SPEED = 1
uint8 HAS_AVG_DIRECTION = 2
uint8 HAS_CURRENT_SPEED = 4
uint8 HAS_CUR_DIRECTION = 8
uint8 HAS_GUST_SPEED = 16
uint8 HAS_GUST_DIRECTION = 32

float32 avg_speed

j2735_v2x_msgs/NTCIPWindSensorAvgDirection avg_direction

float32 current_speed

j2735_v2x_msgs/NTCIPWindSensorSpotDirection cur_direction

float32 gust_speed

j2735_v2x_msgs/NTCIPWindSensorGustDirection gust_direction
