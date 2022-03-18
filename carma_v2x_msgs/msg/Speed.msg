#
# Speed.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Speed from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# Speed in m/s in range (0..163.8)

float32 speed

# True if the speed is unavailable
bool unavailable

float32 MIN=0.0
float32 MAX=163.8
