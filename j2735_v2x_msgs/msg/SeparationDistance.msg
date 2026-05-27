#
# SeparationDistance.msg
#
# J2735 2024 message format (J2945/6).
#

# SeparationDistance ::= INTEGER (0..2001)
#    -- LSB units are 0.1 m
#    -- Provides a range of 0 to 200 m
#    -- The value 2001 indicates unavailable

uint16 UNAVAILABLE = 2001

uint16 separation_distance
