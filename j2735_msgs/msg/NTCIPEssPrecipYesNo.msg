#
# NTCIPEssPrecipYesNo.msg
#
# J2735 2016 message format.
#

# EssPrecipYesNo ::= ENUMERATED {precip (1), noPrecip (2), error (3)} 
uint8 precip_yes_no 

# Enumeration values for precip_yes_no
uint8 PRECIP=1
uint8 NO_PRECIP=2
uint8 ERROR=3