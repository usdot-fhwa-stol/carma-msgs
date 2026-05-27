#
# TRRType.msg
#
# J2735 2024 message format (J3186).
#

# TRRType ::= ENUMERATED {
#    tRRType1 (0),
#    tRRType2 (1),
#    tRRType3 (2),
#    ...
#    }

uint8 TRR_TYPE_1 = 0
uint8 TRR_TYPE_2 = 1
uint8 TRR_TYPE_3 = 2

uint8 trr_type
