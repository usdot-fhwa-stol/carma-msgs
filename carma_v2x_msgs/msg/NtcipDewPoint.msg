#
# NtcipDewPoint.msg
#
# carma_v2x_msgs: SI-converted version.
#

# Temperature converted from tenths of °C to float32 °C

uint8 presence_vector

uint8 HAS_SOURCE = 1
uint8 HAS_MEASUREMENT_STD_DEV = 2

float32 dew_temp

j2735_v2x_msgs/DataSourceInfo source

j2735_v2x_msgs/DewPointTempMeasurementStdDev measurement_std_dev
