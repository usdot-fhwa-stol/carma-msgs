#
# TotalMass.msg
#
# J2735 2024 message format (J2945/6).
#

# TotalMass ::= INTEGER (0..1288)
#    -- LSB units are 100 kg
#    -- Provides a range of 0 to 128,600 kg
#    -- The value 1287 for mass greater than 128,600 kg
#    -- The value 1288 indicates unavailable

uint16 MAX_MASS = 1287
uint16 UNAVAILABLE = 1288

uint16 total_mass
