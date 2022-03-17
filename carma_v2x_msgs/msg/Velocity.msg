#
# Velocity.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Velocity from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#

# Velocity in m/s in range (0..163.82)
float32 velocity

float32 MIN=0.0
float32 MAX=163.82

# If true the velocity is unavailable
bool unavailable
