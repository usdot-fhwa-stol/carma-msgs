#
# NtcipDewPoint.msg
#
# J2735 2024 message format.
#

# NtcipDewPoint ::= SEQUENCE {
#    dewTemp           NTCIPEssDewpointTemp,
#    source            DataSourceInfo                  OPTIONAL,
#    measurementStdDev DewPointTempMeasurementStdDev   OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_SOURCE = 1
uint8 HAS_MEASUREMENT_STD_DEV = 2

j2735_v2x_msgs/NTCIPEssDewpointTemp dew_temp

j2735_v2x_msgs/DataSourceInfo source

j2735_v2x_msgs/DewPointTempMeasurementStdDev measurement_std_dev
