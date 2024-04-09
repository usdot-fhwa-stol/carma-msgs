#
# YawDetected.msg
#
# J3224 2020 message format.
#

# YawDetected ::= INTEGER (-14400..14400)
#   -- LSB units of 0.0125 degrees (signed)
#   -- range of -180 to 180 degrees

int16 yaw_detected

int16 MIN_YAW_DETECTED = -14400
int16 MAX_YAW_DETECTED = 14400