#
# ObjectDistance.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of ObjectDistance from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# ObjectDistance in meters in range (-3276.7..3276.7)
float32 object_distance

float32 MIN_OBJECT_DISTANCE = -3276.7
float32 MAX_OBJECT_DISTANCE = 3276.7