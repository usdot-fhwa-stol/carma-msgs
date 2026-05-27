#
# BrakePedalPosition.msg
#
# J2735 2024 message format (J2945/6).
#

# BrakePedalPosition ::= INTEGER (0..201)
#    -- LSB units are 0.5 percent
#    -- Provides a range of 0 to 100 percent
#    -- The value 201 indicates unavailable

uint8 UNAVAILABLE = 201

uint8 brake_pedal_position
