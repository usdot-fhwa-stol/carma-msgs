#
# NtcipAirTemperature.msg
#
# J2735 2024 message format.
#

# NtcipAirTemperature ::= SEQUENCE {
#    temperature         NTCIPEssAirTemperature,
#    measurementStdDev   TemperatureMeasurementStdDev    OPTIONAL,
#    tempSensorHeight    NTCIPEssTemperatureSensorHeight OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_MEASUREMENT_STD_DEV = 1
uint8 HAS_TEMP_SENSOR_HEIGHT = 2

j2735_v2x_msgs/NTCIPEssAirTemperature temperature

j2735_v2x_msgs/TemperatureMeasurementStdDev measurement_std_dev

j2735_v2x_msgs/NTCIPEssTemperatureSensorHeight temp_sensor_height
