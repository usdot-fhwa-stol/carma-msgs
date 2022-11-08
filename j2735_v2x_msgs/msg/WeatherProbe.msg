#
# WeatherProbe.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# WeatherProbe ::= SEQUENCE {
#    airTemp      AmbientAirTemperature  OPTIONAL,
#    airPressure  AmbientAirPressure     OPTIONAL,
#    rainRates    WiperSet               OPTIONAL,
#    ...
#    }

j2735_v2x_msgs/AmbientAirTemperature air_temp
bool air_temp_exists

j2735_v2x_msgs/AmbientAirPressure air_pressure
bool air_pressure_exists

j2735_v2x_msgs/WiperSet rain_rates
bool rain_rates_exists