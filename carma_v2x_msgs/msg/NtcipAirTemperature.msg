#
# NtcipAirTemperature.msg
#
# carma_v2x_msgs: SI-converted version.
#

# Temperature converted from tenths of °C to float32 °C

uint8 presence_vector

uint8 HAS_MEASUREMENT_STD_DEV = 1
uint8 HAS_TEMP_SENSOR_HEIGHT = 2

float32 temperature

j2735_v2x_msgs/TemperatureMeasurementStdDev measurement_std_dev

j2735_v2x_msgs/NTCIPEssTemperatureSensorHeight temp_sensor_height
