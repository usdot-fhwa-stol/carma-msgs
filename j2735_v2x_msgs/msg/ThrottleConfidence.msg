#
# ThrottleConfidence.msg
#
# J2735 2016 message format.
#
# Parsed description of ThrottleConfidence from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# ThrottleConfidence ::= ENUMERATED {
#    unavailable     (0), -- B'00  Not Equipped or unavailable
#    prec10percent   (1), -- B'01  10  percent Confidence level
#    prec1percent    (2), -- B'10  1   percent Confidence level
#    prec0-5percent  (3)  -- B'11  0.5 percent Confidence level
#    }

uint8 confidence

uint8 UNAVAILABLE = 0
uint8 PREC_10_PERCENT = 1
uint8 PREC_1_PERCENT = 2
uint8 PREC_05_PERCENT = 3
