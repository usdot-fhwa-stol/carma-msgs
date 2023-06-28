#
# PitchRate.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PitchRate from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# PitchRate in degrees per second in range (-327.67..327.67)
float32 pitch_rate

float32 MIN_PITCH_RATE = -327.67
float32 MAX_PITCH_RATE = 327.66

# If true the pitch_rate is unavailable
bool unavailable