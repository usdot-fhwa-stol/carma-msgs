#
# MeasurementTimeOffset.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of MeasurementTimeOffset from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# MeasurementTimeOffset in seconds in range (-1.5..1.5)
float32 measurement_time_offset

float32 MIN_MEASUREMENT_TIME_OFFSET = -1.5
float32 MAX_MEASUREMENT_TIME_OFFSET = 1.5