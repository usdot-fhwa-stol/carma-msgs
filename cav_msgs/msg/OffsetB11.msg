#
# OffsetB11.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# Offset-B11 delta offset in meters in range of +- 10.23 meters
float32 offset

float64 MIN = -10.23
float64 MAX = 10.23

# If true the offset is unset
bool unavailable