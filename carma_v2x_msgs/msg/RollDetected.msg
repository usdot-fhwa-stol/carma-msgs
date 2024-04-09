#
# RollDetected.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of RollDetected from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# RollDetected in degrees in range (-180.0..180.0)
float32 roll_detected

float32 MIN_ROLL_DETECTED = -180.0
float32 MAX_ROLL_DETECTED = 180.0