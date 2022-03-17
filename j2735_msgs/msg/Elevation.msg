#
# Elevation.msg
#
# J2735 2016 message format.
#
# Parsed description of Elevation from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# elevation Elevation, -- in 10 cm units
# Elevation ::= INTEGER (-4096..61439)
#  -- In units of 10 cm steps above or below the reference ellipsoid
#  -- Providing a range of -409.5 to + 6143.9 meters
#  -- The value -4096 shall be used when Unknown is to be sent
#  -- Convert to meter with factor 0.1 when field is used
int32 elevation

int32 ELEVATION_UNAVAILABLE = -4096
int32 ELEVATION_MAX = 61439
int32 ELEVATION_MIN = -4095