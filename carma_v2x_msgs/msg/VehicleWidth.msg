#
# VehicleWidth.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# VehicleWidth in meters in range of (0..10.23] meters
float32 vehicle_width

float32 VEHICLE_WIDTH_MAX = 10.23

# If true the vehicle width is unavailable
bool unavailable