#
# VertOffsetB12.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of VertOffset-B12 from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# Vertical Offset in meters in range (-204.7..204.7)  
float32 offset

# If true the offset is unavailable
bool unavailable

float32 MIN=-204.7
float32 MAX=204.7
