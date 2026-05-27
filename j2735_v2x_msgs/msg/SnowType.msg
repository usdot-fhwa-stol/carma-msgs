#
# SnowType.msg
#
# J2735 2024 message format.
#

# SnowType ::= ENUMERATED { packed, loose, ... }

uint8 PACKED = 0
uint8 LOOSE = 1

uint8 snow_type
