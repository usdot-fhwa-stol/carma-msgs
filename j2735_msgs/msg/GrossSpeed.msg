#
# GrossSpeed.msg
#
# J2735 2016 message format.
#

# GrossSpeed ::= INTEGER (0..31) -- Units of 1.00 m/s
#    -- The value 30 shall be used for speeds of 30 m/s or greater (67.1 mph)
#    -- The value 31 shall indicate that the speed is unavailable
uint8 speed

uint8 SPEED_MIN=0
uint8 SPEED_MAX=30
uint8 SPEED_UNAVAILABLE=31