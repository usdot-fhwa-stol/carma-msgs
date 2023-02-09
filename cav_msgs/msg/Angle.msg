#
# Angle.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# The current heading of the sending device is expressed in degrees from north. North shall be defined as the axis 
# defined by the WGS-84 coordinate system and its reference ellipsoid. Any angle “to the east” is defined
# as the positive direction. 

# Angle in degrees in range (0..359.9875)
float32 angle

float32 ANGLE_MAX = 359.9875
float32 ANGLE_MIN = 0.0

# If true then angle is unavailable
bool unavailable