#
# Angle.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# Angle ::= INTEGER (0..239)
#    -- Unsigned units of 1.5 degree, in 1 octet
#    -- the true north is 0, positive is clockwise
#    -- the values 240 to 254 shall not be sent
#    -- the value 255 (0xFF) indicates an invalid value
uint8 angle

uint8 TRUE_NORTH=0
uint8 INVALID=255