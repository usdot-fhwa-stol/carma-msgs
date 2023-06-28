#
# SizeValue.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of SizeValue from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# SizeValue in meters in range (0.0..102.3)
float32 size_value

float32 MIN_SIZE_VALUE = 0.0
float32 MAX_SIZE_VALUE = 102.3