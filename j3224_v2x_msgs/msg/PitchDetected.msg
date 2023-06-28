#
# PitchDetected.msg
#
# J3224 2020 message format.
#

# PitchDetected ::= INTEGER (-7200..7200)
#   -- LSB units of 0.0125 degrees (signed)
#   -- range of -90 to 90 degrees

int16 pitch_detected

int16 MIN_PITCH_DETECTED = -7200
int16 MAX_PITCH_DETECTED = 7200