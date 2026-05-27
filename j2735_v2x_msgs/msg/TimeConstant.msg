#
# TimeConstant.msg
#
# J2735 2024 message format (J2945/6).
#

# TimeConstant ::= INTEGER (0..255)
#    -- Units of 0.1 s
#    -- Provides a range of 0 to 25.4 s
#    -- The value 255 indicates unavailable

uint8 UNAVAILABLE = 255

uint8 time_constant
