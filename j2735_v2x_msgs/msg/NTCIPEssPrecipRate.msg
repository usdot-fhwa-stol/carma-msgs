#
# NTCIPEssPrecipRate.msg
#
# J2735 2016 message format.
#

# EssPrecipRate ::= INTEGER (0..65535)
# The rainfall, or water equivalent of snow, rate in tenths of grams per square meter per second. For rain, this is
# approximately to 0.36 mm/h. A value of 65535 shall indicate an error condition or missing value.
uint16 precip_rate

uint16 ERROR_OR_MISSING_VALUE = 65535