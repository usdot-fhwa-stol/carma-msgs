#
# Yaw.msg
#
# J2735 2024 message format (J2945/6).
#

# Yaw ::= INTEGER (0..28800)
#    -- LSB of 0.0125 degrees
#    -- A range of 0 to 359.9875 degrees
#    -- A value of 28800 shall be used when unavailable

uint16 UNAVAILABLE = 28800

uint16 yaw
