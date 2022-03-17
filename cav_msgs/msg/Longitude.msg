#
# Longitude.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Longitude from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# Longitude in degrees in range (-179.9999999..180.000000)
float64 longitude

float32 MIN=-179.9999999
float32 MAX=180.000000

# True if longitude is unavailable
bool unavailable