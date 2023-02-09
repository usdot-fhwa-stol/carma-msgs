#
# SirenInUse.msg
#
# J2735 2016 message format.
#

# SirenInUse ::= ENUMERATED {
#   unavailable (0), -- Not Equipped or unavailable
#   notInUse (1),
#   inUse (2),
#   reserved (3) -- for future use
# }

uint8  siren_in_use

# enumeration values for siren_in_use:
uint8  UNAVAILABLE=0
uint8  NOT_IN_USE=1
uint8  IN_USE=2
uint8  RESERVED=3