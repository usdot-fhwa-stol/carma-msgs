#
# HumanPropelledType.msg
#
# J2735 2016 message format.
#
# Parsed description of HumanPropelledType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# HumanPropelledType ::= ENUMERATED {   
#    unavailable        (0),
#    otherTypes         (1), -- any method not listed below
#    onFoot             (2),
#    skateboard         (3),
#    pushOrKickScooter  (4),
#    wheelchair         (5), -- implies manually powered
#    ...
# }

uint8 type
uint8 UNAVAILABLE=0
uint8 OTHER_TYPES=1
uint8 ON_FOOT=2
uint8 PUSH_OR_KICK_SCOOTER=3
uint8 WHEELCHAIR=4

