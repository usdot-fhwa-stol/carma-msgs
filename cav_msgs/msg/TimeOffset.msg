#
# TimeOffset.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of TimeOffset from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# TimeOffset in seconds in range (0.01..655.34)
float32 offset

# If true the offset is unavailable
bool unavailable

float32 MIN=1
float32 MAX=655.34
