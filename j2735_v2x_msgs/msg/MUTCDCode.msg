#
# MUTCDCode.msg
#
# J2735 2024 message format.
#

# MUTCDCode ::= ENUMERATED {
#    none            (0),
#    regulatory      (1),
#    warning         (2),
#    maintenance     (3),
#    motoristService (4),
#    guide           (5),
#    rec             (6),
#    ...
#    }

uint8 NONE = 0
uint8 REGULATORY = 1
uint8 WARNING = 2
uint8 MAINTENANCE = 3
uint8 MOTORIST_SERVICE = 4
uint8 GUIDE = 5
uint8 REC = 6

uint8 mutcd_code
