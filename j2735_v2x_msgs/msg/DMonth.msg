#
# DMonth.msg
#
# J2735 2016 message format.
#
# Parsed description of DMonth from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# DMonth ::= INTEGER (0..12) -- units of months
uint8 month

uint8 UNAVAILABLE=0
uint8 MAX=12