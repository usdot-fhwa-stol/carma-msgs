#
# PitchDetected.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PitchDetected from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# PitchDetected in degrees in range (-90.0..90.0)
float32 pitch_detected 

float32 MIN_PITCH_DETECTED = -90.0
float32 MAX_PITCH_DETECTED = 90.0