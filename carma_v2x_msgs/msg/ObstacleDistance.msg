#
# ObstacleDistance.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# ObstacleDistance in meters in range [0..32767] meters
float32 distance

float32 DISTANCE_MIN = 0.0
float32 DISTANCE_MAX = 32767.0