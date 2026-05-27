#
# NtcipWind.msg
#
# J2735 2024 message format.
#

# NtcipWind ::= SEQUENCE {
#    avgSpeed        NTCIPWindSensorAvgSpeed         OPTIONAL,
#    avgDirection    NTCIPWindSensorAvgDirection     OPTIONAL,
#    currentSpeed    NTCIPWindSensorSpotSpeed        OPTIONAL,
#    curDirection    NTCIPWindSensorSpotDirection    OPTIONAL,
#    gustSpeed       NTCIPWindSensorGustSpeed        OPTIONAL,
#    gustDirection   NTCIPWindSensorGustDirection    OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_AVG_SPEED = 1
uint8 HAS_AVG_DIRECTION = 2
uint8 HAS_CURRENT_SPEED = 4
uint8 HAS_CUR_DIRECTION = 8
uint8 HAS_GUST_SPEED = 16
uint8 HAS_GUST_DIRECTION = 32

j2735_v2x_msgs/NTCIPWindSensorAvgSpeed avg_speed

j2735_v2x_msgs/NTCIPWindSensorAvgDirection avg_direction

j2735_v2x_msgs/NTCIPWindSensorSpotSpeed current_speed

j2735_v2x_msgs/NTCIPWindSensorSpotDirection cur_direction

j2735_v2x_msgs/NTCIPWindSensorGustSpeed gust_speed

j2735_v2x_msgs/NTCIPWindSensorGustDirection gust_direction
