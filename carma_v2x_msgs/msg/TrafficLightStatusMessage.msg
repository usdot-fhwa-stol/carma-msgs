#
# TrafficLightStatusMessage.msg
#
# Modified J2735 2024 message format, adjusted to use base SI units (m,s, etc) in most case.
#

std_msgs/Header header

uint8 presence_vector

uint8 HAS_LONG = 1
uint8 HAS_LAT = 2

j2735_v2x_msgs/TrafficLightID traffic_light_id

carma_v2x_msgs/Longitude longitude

carma_v2x_msgs/Latitude latitude

j2735_v2x_msgs/TrafficLightOperationStatus operation_status

j2735_v2x_msgs/TrafficLightControllerStatus controller_status

j2735_v2x_msgs/TimeInSecondB16 cyclecounter

j2735_v2x_msgs/TimeInSecondB16 cycletime

j2735_v2x_msgs/DDateTime current_time

j2735_v2x_msgs/TrafficLightStatus[] traffic_light_status
