#
# VertOffsetB07.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# VertOffsetB07 in meters in range of [-6.3..6.3] meters
float32 offset 

float32 OFFSET_MIN = -6.3
float32 OFFSET_MAX = 6.3

# If true the offset is unavailable
bool unavailable