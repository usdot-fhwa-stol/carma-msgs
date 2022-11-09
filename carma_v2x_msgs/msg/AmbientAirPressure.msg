#
# AmbientAirPressure.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# AmbientAirPressure in Pascals in range [58000..108800]
float32 pressure

float32 PRESSURE_MIN = 58000
float32 PRESSURE_MAX = 108800

# If true the ambient air pressure is unavailable
bool unavailable