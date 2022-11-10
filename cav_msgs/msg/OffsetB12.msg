#
# OffsetB12.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# Offset-B12 offset in meters in range of +- 20.47 meters
float32 offset

float32 MIN = -20.47
float32 MAX = 20.47

# If true the offset is unset
bool unavailable