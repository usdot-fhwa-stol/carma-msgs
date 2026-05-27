#
# GravelType.msg
#
# J2735 2024 message format.
#

# GravelType ::= ENUMERATED { packedOiled, loose, ... }

uint8 PACKED_OILED = 0
uint8 LOOSE = 1

uint8 gravel_type
