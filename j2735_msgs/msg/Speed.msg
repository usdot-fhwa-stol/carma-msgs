#
# Speed.msg
#
# J2735 2016 message format.
#
# Parsed description of Speed from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# Speed ::= INTEGER (0..8191) -- Units of 0.02 m/s
#           -- The value 8191 indicates that 
#           -- speed is unavailable

uint16 speed

uint16 MIN=0
uint16 MAX=8190
uint16 UNAVAILABLE=8191