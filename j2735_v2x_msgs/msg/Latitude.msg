#
# Latitude.msg
#
# J2735 2016 message format.
#
# Parsed description of Latitude from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# lat Latitude, -- in 1/10th micro degrees
# Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_UNAVAILABLE = 900000001
int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000