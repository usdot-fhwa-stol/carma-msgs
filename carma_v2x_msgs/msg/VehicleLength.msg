#
# VehicleLength.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# VehicleWidth in meters in range of (0..40.95] meters
uint16 vehicle_length

float32 VEHICLE_WIDTH_MAX = 40.95

# If true the vehicle length is unavailable
bool unavailable