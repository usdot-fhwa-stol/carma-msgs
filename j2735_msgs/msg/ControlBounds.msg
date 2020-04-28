#
# ControlBounds.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author  Misheel Bayartsengel
# @version 0.1
#
# Description
# ...

# ControlBounds ::= IMPLICIT SEQUENCE {
# 	oldest INTEGER (0..9223372036854775807), -- timestamp of oldest control message within bounds
# 	lon INTEGER (-1800000000..1799999999), -- initial vertex reference longitude
# 	lat INTEGER (-900000000..900000000), -- initial vertex reference latitude
# 	offsets SEQUENCE (SIZE(3)) OF INTEGER (-32768..32767) -- relative vertex positions in scaled meters
# }

# Oldest INTEGER (0..9223372036854775807)
#  -- timestamp of oldest control message within bounds
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
uint64 oldest

# Longitude ::= INTEGER (-1799999999..1800000001)
#  -- initial vertex reference longitude
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_UNAVAILABLE = 1800000001
int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999

# Latitude ::= INTEGER (-900000000..900000001)
#  -- initial vertex reference latitude
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_UNAVAILABLE = 900000001
int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000

# Offsets SEQUENCE (SIZE(3)) OF INTEGER (-32768..32767) 
#  -- relative vertex positions in scaled meters
int16[3] offsets

