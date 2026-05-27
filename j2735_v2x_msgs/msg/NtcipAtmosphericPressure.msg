#
# NtcipAtmosphericPressure.msg
#
# J2735 2024 message format.
#

# NtcipAtmosphericPressure ::= SEQUENCE {
#    pressure          NTCIPEssPressureSensorAtmosphericPressure,
#    measurementStdDev AtmosPressureMeasurementStdDev  OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_MEASUREMENT_STD_DEV = 1

j2735_v2x_msgs/NTCIPEssPressureSensorAtmosphericPressure pressure

j2735_v2x_msgs/AtmosPressureMeasurementStdDev measurement_std_dev
