#
# AmbientAirPressure.msg
#
# J2735 2016 message format.
#

# AmbientAirPressure ::= INTEGER (0..255) 
#    -- 8 Bits in hPa starting at 580 with a resolution of 
#    -- 2 hPa resulting in a range of 580 to 1088
uint8 pressure

uint8 PRESSURE_MIN = 0
uint8 PRESSURE_MAX = 255
uint8 PRESSURE_UNAVAILABLE = 0