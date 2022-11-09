#
# NTCIPEssSolarRadiation.msg
#
# J2735 2016 message format.
#

# EssSolarRadiation ::= INTEGER (0..65535) 
# The direct solar radiation integrated over the 24 hours preceding the observation in Joules per square meter. A value
# of 65535 shall indicate a missing value.
uint16 ess_solar_radiation

uint16 MISSING_VALUE=65535