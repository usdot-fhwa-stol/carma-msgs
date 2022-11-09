#
# WeatherProbe.msg
#
# J2735 2016 message format.
#

# WeatherProbe ::= SEQUENCE {
#    airTemp      AmbientAirTemperature  OPTIONAL,
#    airPressure  AmbientAirPressure     OPTIONAL,
#    rainRates    WiperSet               OPTIONAL,
#    ...
#    }

# A BIT STRING defining the presence of optional feilds.
# Compare with bitwise-and
# if (presence_vector & HAS_AIR_TEMP) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_AIR_TEMP
uint32 presence_vector

uint32 HAS_AIR_TEMP = 1
uint16 HAS_AIR_PRESSURE = 2
uint16 HAS_RAIN_RATES = 4

j2735_v2x_msgs/AmbientAirTemperature air_temp

j2735_v2x_msgs/AmbientAirPressure air_pressure

j2735_v2x_msgs/WiperSet rain_rates