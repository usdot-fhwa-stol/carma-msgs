#
# Roll.msg
#
# J2735 2024 message format (J2945/6).
#

# Roll ::= INTEGER (-7200..7201)
#    -- LSB of 0.0125 degrees
#    -- A range of -90 to 90 degrees
#    -- A value of 7201 shall be used when unavailable

int16 UNAVAILABLE = 7201

int16 roll
