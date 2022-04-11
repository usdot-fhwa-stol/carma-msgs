#
# DSecond.msg
#
# J2735 2016 message format.
#
# Parsed description of DSecond from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# DSecond ::= INTEGER (0..65535) -- units of milliseconds

uint16 millisecond

uint16 MILLISEC_WITHIN_MINUTE_NON_LEAP_MIN=0
uint16 MILLISEC_WITHIN_MINUTE_NON_LEAP_MAX=59999
uint16 MILLISEC_WITHIN_MINUTE_LEAP_MIN=60000
uint16 MILLISEC_WITHIN_MINUTE_LEAP_MAX=60999
uint16 RESERVED_MIN=61000
uint16 RESERVED_MAX=65534
uint16 UNAVAILABLE=65535
