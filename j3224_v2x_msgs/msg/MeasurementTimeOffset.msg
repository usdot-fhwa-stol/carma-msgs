#
# MeasurementTimeOffset.msg
#
# J3224 2020 message format.
#

# MeasurementTimeOffset ::= INTEGER (-1500..1500) -- LSB units of 1ms

int16 measurement_time_offset

int16 MIN_MEASUREMENT_TIME_OFFSET = -1500
int16 MAX_MEASUREMENT_TIME_OFFSET = 1500