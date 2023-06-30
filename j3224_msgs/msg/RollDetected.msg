#
# RollDetected.msg
#
# J3224 2020 message format.
#

# RollDetected ::= INTEGER (-14400..14400)
#   -- LSB units of 0.0125 degrees (signed)
#   -- range of -180 to 180 degrees

int16 roll_detected

int16 MIN_ROLL_DETECTED = -14400
int16 MAX_ROLL_DETECTED = 14400