#
# OffsetB10.msg
#
# J2735 2016 message format.
#

# Offset-B10 delta offset in meters in range [-5.11..5.11] meters
float32 offset

float32 OFFSET_MIN=-5.11
float32 OFFSET_MAX=5.11

# If true the offset is unset
bool unavailable