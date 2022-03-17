#
# HeadingConfidence.msg
#
# J2735 2016 message format.
#
# Parsed description of HeadingConfidence from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# HeadingConfidence ::= ENUMERATED {
#    unavailable   (0), -- B'000  Not Equipped or unavailable
#    prec10deg     (1), -- B'010  10     degrees
#    prec05deg     (2), -- B'011  5      degrees
#    prec01deg     (3), -- B'100  1      degrees
#    prec0-1deg    (4), -- B'101  0.1    degrees
#    prec0-05deg   (5), -- B'110  0.05   degrees
#    prec0-01deg   (6), -- B'110  0.01   degrees
#    prec0-0125deg (7)  -- B'111  0.0125 degrees, aligned with heading LSB
#    }  -- Encoded as a 3 bit value

uint8 confidence

uint8 UNAVAILABLE = 0
uint8 PREC_10_DEG = 1
uint8 PREC_05_DEG = 2
uint8 PREC_01_DEG = 3
uint8 PREC_001_DEG = 4
uint8 PREC_0005_DEG = 5
uint8 PREC_0001_DEG = 6
uint8 PREC_000125_DEG = 7
