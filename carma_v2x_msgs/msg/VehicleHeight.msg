#
# VehicleHeight.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# VehicleHeight in meters in range of (0..6.35] meters
float32 vehicle_height

float32 VEHICLE_HEIGHT_MAX = 6.35

# If true the vehicle height is unavailable
bool unavailable