#
# DDay.msg
#
# J2735 2016 message format.
#
# Parsed description of DDay from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# DDay ::= INTEGER (0..31)  -- units of days
uint8 day

uint8 UNAVAILABLE=0
uint8 MAX=31