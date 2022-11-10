#
# Angle.msg
#
# J2735 2016 message format.
#

# Angle ::= INTEGER (0..28800) 
#    -- LSB of 0.0125 degrees
#    -- A range of 0 to 359.9875 degrees
uint16 angle

uint16 ANGLE_UNAVAILABLE = 28800
uint16 ANGLE_MAX = 28799
uint16 ANGLE_MIN = 0