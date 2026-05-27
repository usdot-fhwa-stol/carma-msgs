#
# MaxAvailableDeceleration.msg
#
# J2735 2024 message format (J2945/6).
#

# MaxAvailableDeceleration ::= INTEGER (-2001..0)
#    -- LSB units are 0.01 m/s^2
#    -- Provides a range of 0 to -20 m/s^2
#    -- The value -2001 indicates unavailable

int16 UNAVAILABLE = -2001

int16 max_available_deceleration
