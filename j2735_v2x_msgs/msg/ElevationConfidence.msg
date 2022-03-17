#
# ElevationConfidence.msg
#
# J2735 2016 message format.
#
# Parsed description of ElevationConfidence from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# ElevationConfidence ::= ENUMERATED {
#    unavailable (0),  -- B'0000  Not Equipped or unavailable
#    elev-500-00 (1),  -- B'0001  (500 m)
#    elev-200-00 (2),  -- B'0010  (200 m)
#    elev-100-00 (3),  -- B'0011  (100 m)
#    elev-050-00 (4),  -- B'0100  (50 m)
#    elev-020-00 (5),  -- B'0101  (20 m)
#    elev-010-00 (6),  -- B'0110  (10 m)
#    elev-005-00 (7),  -- B'0111  (5 m)
#    elev-002-00 (8),  -- B'1000  (2 m)
#    elev-001-00 (9),  -- B'1001  (1 m)
#    elev-000-50 (10), -- B'1010  (50 cm)
#    elev-000-20 (11), -- B'1011  (20 cm)
#    elev-000-10 (12), -- B'1100  (10 cm)
#    elev-000-05 (13), -- B'1101  (5 cm)
#    elev-000-02 (14), -- B'1110  (2 cm)
#    elev-000-01 (15)  -- B'1111  (1 cm)
#    }

uint8 confidence

uint8 UNAVAILABLE = 0
uint8 ELEV_500_00 = 1
uint8 ELEV_200_00 = 2
uint8 ELEV_100_00 = 3
uint8 ELEV_050_00 = 4
uint8 ELEV_020_00 = 5
uint8 ELEV_010_00 = 6
uint8 ELEV_005_00 = 7
uint8 ELEV_002_00 = 8
uint8 ELEV_001_00 = 9
uint8 ELEV_000_50 = 10
uint8 ELEV_000_20 = 11
uint8 ELEV_000_10 = 12
uint8 ELEV_000_05 = 13
uint8 ELEV_000_02 = 14
uint8 ELEV_000_01 = 15