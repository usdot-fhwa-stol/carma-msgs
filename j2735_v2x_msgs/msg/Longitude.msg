#
# Longitude.msg
#
# J2735 2016 message format.
#
# Parsed description of Longitude from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# long Longitude, -- in 1/10th micro degrees
# Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_UNAVAILABLE = 1800000001
int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999