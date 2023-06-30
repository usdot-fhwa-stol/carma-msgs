#
# SizeValueConfidence.msg
#
# J3224 2020 message format.
#

# SizeValueConfidence ::= ENUMERATED {
#   unavailable (0),
#   size-100-00 (1), -- (100 m)
#   size-050-00 (2), -- (50 m)
#   size-020-00 (3), -- (20 m)
#   size-010-00 (4), -- (10 m)
#   size-005-00 (5), -- (5 m)
#   size-002-00 (6), -- (2 m)
#   size-001-00 (7), -- (1 m)
#   size-000-50 (8), -- (50 cm)
#   size-000-20 (9), -- (20 cm)
#   size-000-10 (10), -- (10 cm)
#   size-000-05 (11), -- (5 cm)
#   size-000-02 (12), -- (2 cm)
#   size-000-01 (13) -- (1 cm)
# }

uint8 size_value_confidence 

# enumeration values for size_value_confidence:
uint8 UNAVAILABLE = 0
uint8 SIZE_100_00 = 1
uint8 SIZE_050_00 = 2
uint8 SIZE_020_00 = 3
uint8 SIZE_010_00 = 4
uint8 SIZE_005_00 = 5
uint8 SIZE_002_00 = 6
uint8 SIZE_001_00 = 7
uint8 SIZE_000_50 = 8
uint8 SIZE_000_20 = 9
uint8 SIZE_000_10 = 10
uint8 SIZE_000_05 = 11
uint8 SIZE_000_02 = 12
uint8 SIZE_000_01 = 13