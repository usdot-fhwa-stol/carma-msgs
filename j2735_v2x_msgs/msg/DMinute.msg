#
# DMinute.msg
#
# J2735 2016 message format.
#
# Parsed description of DMinute from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# DMinute ::= INTEGER (0..60) -- units of minutes

uint8 minute

uint8 MINUTE_IN_HOUR_MIN=0
uint8 MINUTE_IN_HOUR_MAX=59
uint8 UNAVAILABLE=60