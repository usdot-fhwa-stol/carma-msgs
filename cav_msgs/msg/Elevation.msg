#
# Elevation.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Elevation from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#

# Elevation in meters in range (-409.6..6143.9)
float32 elevation

float32 MIN=-409.6
float32 MAX=6143.9

# If true then elevation is unavailable
bool unavailable
