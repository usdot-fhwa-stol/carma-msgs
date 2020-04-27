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

# Oldest INTEGER (0..9223372036854775807)
#  -- timestamp of oldest control message within bounds
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
uint64 oldest

# Longitude in degrees
# -- initial vertex reference longitude
float64 longitude

float64 LONGITUDE_MAX = 180.0
float64 LONGITUDE_MIN = -179.9999999

# Latitude in degrees
# -- initial vertex reference latitude
float64 latitude

float64 LATITUDE_MAX = 90.0
float64 LATITUDE_MIN = -90.0

# Offsets SEQUENCE (SIZE(3)) OF INTEGER (-32768..32767) 
#  -- relative vertex positions in scaled meters
int16 offsets

