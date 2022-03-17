#
# Heading.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Heading from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# Heading in degrees in range (0..359.9875)
float32 heading

float32 MIN=0.0
float32 MAX=359.9875

# If true then heading is unavailable
bool unavailable
