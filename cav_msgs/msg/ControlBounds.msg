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

# Oldest timestamp in seconds
#  -- timestamp of oldest control message within bounds
time oldest

# Longitude in degrees with a range of (-179.9999999, 180.0)
# -- initial vertex reference longitude
float64 longitude

# Latitude in degrees with a range of (-90.0, 90.0)
# -- initial vertex reference latitude
float64 latitude

# Offsets
#  -- relative vertex positions in meters
float64[3] offsets

