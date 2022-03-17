#
# Latitude.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Latitude from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# Latitude in degrees in range (-90..90)
float64 latitude

float32 MIN=-90.0
float32 MAX=90.0

# True if the latitude value is unavailable
bool unavailable