#
# AmbientAirTemperature.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# AmbientAirTemperature ::= INTEGER (0..191) -- in deg C with a -40 offset
#     -- The value 191 shall indicate an unknown value

uint8 temperature 

uint8 TEMPERATURE_MAX=190
uint8 TEMPERATURE_UNKNOWN=191