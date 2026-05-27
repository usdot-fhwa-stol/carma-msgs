#
# RollRate.msg
#
# J2735 2024 message format (J2945/6).
#

# RollRate ::= INTEGER (-3000..3001)
#    -- LSB units of 0.01 degrees per second (signed)
#    -- A value of 3001 shall be used when unavailable

int16 UNAVAILABLE = 3001

int16 roll_rate
