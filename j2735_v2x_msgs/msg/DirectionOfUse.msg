#
# DirectionOfUse.msg
#
# J2735 2024 message format.
#

# DirectionOfUse ::= ENUMERATED {
#    unavailable (0),
#    forward     (1),
#    reverse     (2),
#    both        (3)
#    }

uint8 UNAVAILABLE = 0
uint8 FORWARD = 1
uint8 REVERSE = 2
uint8 BOTH = 3

uint8 direction_of_use
