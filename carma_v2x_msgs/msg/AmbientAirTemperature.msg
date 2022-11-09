#
# AmbientAirTemperature.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# AmbientAirTemperature in deg C in range (-40..150) deg C
float32 temperature 

float32 TERMPERATURE_MIN=-40
float32 TEMPERATURE_MAX=150

# If true the ambient air temperature is unavailable
bool unavailable