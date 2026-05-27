#
# NtcipAtmosphericPressure.msg
#
# carma_v2x_msgs: SI-converted version.
#

# Pressure converted from tenths of hPa to float32 hPa

uint8 presence_vector

uint8 HAS_MEASUREMENT_STD_DEV = 1

float32 pressure

j2735_v2x_msgs/AtmosPressureMeasurementStdDev measurement_std_dev
