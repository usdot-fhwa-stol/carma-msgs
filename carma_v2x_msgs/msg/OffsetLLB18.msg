#
# OffsetLLB18.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of OffsetLL-B18 from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# OffsetLL-B18 offset in degrees in range of +- 0.0131071 degrees

float64 offset

# If true the offset is unset
bool unavailable

float64 MIN=-0.0131071
float64 MAX=0.0131071