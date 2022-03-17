#
# PositionConfidence.msg
#
# J2735 2016 message format.
#
# Parsed description of PositionConfidence from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PositionConfidence ::= ENUMERATED {
#    unavailable (0),  -- B'0000  Not Equipped or unavailable
#    a500m   (1), -- B'0001  500m  or about 5 * 10 ^ -3 decimal degrees
#    a200m   (2), -- B'0010  200m  or about 2 * 10 ^ -3 decimal degrees
#    a100m   (3), -- B'0011  100m  or about 1 * 10 ^ -3 decimal degrees
#    a50m    (4), -- B'0100  50m   or about 5 * 10 ^ -4 decimal degrees 
#    a20m    (5), -- B'0101  20m   or about 2 * 10 ^ -4 decimal degrees 
#    a10m    (6), -- B'0110  10m   or about 1 * 10 ^ -4 decimal degrees 
#    a5m     (7), -- B'0111  5m    or about 5 * 10 ^ -5 decimal degrees 
#    a2m     (8), -- B'1000  2m    or about 2 * 10 ^ -5 decimal degrees 
#    a1m     (9), -- B'1001  1m    or about 1 * 10 ^ -5 decimal degrees 
#    a50cm  (10), -- B'1010  0.50m or about 5 * 10 ^ -6 decimal degrees 
#    a20cm  (11), -- B'1011  0.20m or about 2 * 10 ^ -6 decimal degrees 
#    a10cm  (12), -- B'1100  0.10m or about 1 * 10 ^ -6 decimal degrees 
#    a5cm   (13), -- B'1101  0.05m or about 5 * 10 ^ -7 decimal degrees 
#    a2cm   (14), -- B'1110  0.02m or about 2 * 10 ^ -7 decimal degrees 
#    a1cm   (15)  -- B'1111  0.01m or about 1 * 10 ^ -7 decimal degrees 
#    } 

uint8 confidence

uint8 UNAVAILABLE=0
uint8 A500M=1
uint8 A200M=2
uint8 A100M=3
uint8 A50M=4
uint8 A20M=5
uint8 A10M=6
uint8 A5M=7
uint8 A2M=8
uint8 A1M=9
uint8 A50CM=10
uint8 A20CM=11
uint8 A10CM=12
uint8 A5CM=13
uint8 A2CM=14
uint8 A1CM=15