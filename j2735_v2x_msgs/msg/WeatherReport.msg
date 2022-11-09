#
# WeatherReport.msg
#
# J2735 2016 message format.
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

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_RAIN_RATE) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_RAIN_RATE
uint16 presence_vector

uint16 HAS_RAIN_RATE = 1
uint16 HAS_PRECIP_SITUATION = 2
uint16 HAS_SOLAR_RADIATION = 4
uint16 HAS_FRICTION = 8
uint16 HAS_ROAD_FRICTION = 16

j2735_v2x_msgs/NTCIPEssPrecipYesNo is_raining

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

j2735_v2x_msgs/NTCIPEssPrecipRate rain_rate

j2735_v2x_msgs/NTCIPEssPrecipSituation precip_situation

j2735_v2x_msgs/NTCIPEssSolarRadiation solar_radiation

j2735_v2x_msgs/NTCIPEssMobileFriction friction

j2735_v2x_msgs/CoefficientOfFriction road_friction