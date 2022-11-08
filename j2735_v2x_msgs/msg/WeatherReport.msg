#
# WeatherReport.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# WeatherReport ::= SEQUENCE {    
#    isRaining        NTCIP.EssPrecipYesNo,
#    rainRate         NTCIP.EssPrecipRate       OPTIONAL,
#    precipSituation  NTCIP.EssPrecipSituation  OPTIONAL,
#    solarRadiation   NTCIP.EssSolarRadiation   OPTIONAL,
#    friction         NTCIP.EssMobileFriction   OPTIONAL,
#    roadFriction     CoefficientOfFriction     OPTIONAL,   
#    ... 
#    }

j2735_v2x_msgs/NTCIPEssPrecipYesNo is_raining

j2735_v2x_msgs/NTCIPEssPrecipRate rain_rate
bool rain_rate_exists

j2735_v2x_msgs/NTCIPEssPrecipSituation precip_situation
bool precip_situation_exists

j2735_v2x_msgs/NTCIPEssSolarRadiation solar_radiation
bool solar_radiation_exists

j2735_v2x_msgs/NTCIPEssMobileFriction friction
bool friction_exists

j2735_v2x_msgs/CoefficientOfFriction road_friction
bool road_friction_exists
