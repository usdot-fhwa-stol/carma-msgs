#
# NTCIPEssMobileFriction.msg
#
# J2735 2016 message format.
#

# EssMobileFriction ::= INTEGER (0..101)
# Indicates measured coefficient of friction in percent. The value 101 shall indicate an error condition or missing value.
uint8 ess_mobile_friction

uint8 ESS_MOBILE_FRICTION_MIN=0
uint8 ESS_MOBILE_FRICTION_MAX=100
uint8 ERROR_OR_MISSING_VALUE=101