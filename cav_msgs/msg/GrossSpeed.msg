#
# GrossSpeed.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# GrossSpeed ::= INTEGER (0..31) -- Units of 1.00 m/s
#    -- The value 30 shall be used for speeds of 30 m/s or greater (67.1 mph)
#    -- The value 31 shall indicate that the speed is unavailable
# GrossSpeed in m/s in range [0, 30] m/s
float32 speed

float32 SPEED_MIN=0.0
float32 SPEED_MAX=30.0

# If true the gross speed is unavailable
bool unavailable
