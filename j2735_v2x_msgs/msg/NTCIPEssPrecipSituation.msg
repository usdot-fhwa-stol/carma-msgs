#
# NTCIPEssPrecipSituation.msg
#
# J2735 2016 message format.
#

# EssPrecipSituation ::= ENUMERATED {
#    other (1), 
#    unknown (2), 
#    noPrecipitation (3), 
#    unidentifiedSlight (4), 
#    unidentifiedModerate (5), 
#    unidentifiedHeavy (6), 
#    snowSlight (7), 
#    snowModerate (8), 
#    snowHeavy (9), 
#    rainSlight (10), 
#    rainModerate (11), 
#    rainHeavy (12), 
#    frozenPrecipitationSlight (13), 
#    frozenPrecipitationModerate (14), 
#    frozenPrecipitationHeavy (15)
#    }

uint8 ess_precip_situation

# Enumeration values for ess_precip_situation 
uint8 OTHER=1
uint8 UNKNOWN=2
uint8 NO_PRECIPITATION=3
uint8 UNIDENTIFIED_SLIGHT=4
uint8 UNIDENTIFIED_MODERATE=5
uint8 UNIDENTIFIED_HEAVY=6
uint8 SNOW_SLIGHT=7
uint8 SNOW_MODERATE=8
uint8 SNOW_HEAVY=9
uint8 RAIN_SLIGHT=10
uint8 RAIN_MODERATE=11
uint8 RAIN_HEAVY=12
uint8 FROZEN_PRECIPITATION_SLIGHT=13
uint8 FROZEN_PRECIPITATION_MODERATE=14
uint8 FROZEN_PRECIPITATION_HEAVY=15