#
# AccelerationConfidence.msg
#
# J2735 2016 message format.
#

# AccelerationConfidence ::= ENUMERATED {
#    unavailable (0), -- Not Equipped or data is unavailable
#    accl-100-00 (1), -- 100 meters/second squared
#    accl-010-00 (2), -- 10 meters/second squared
#    accl-005-00 (3), -- 5 meters/second squared
#    accl-001-00 (4), -- 1 meters/second squared
#    accl-000-10 (5), -- 0.1 meters/second squared
#    accl-000-05 (6), -- 0.05 meters/second squared
#    accl-000-01 (7) -- 0.01 meters/second squared
# } -- Encoded as a 3 bit value

uint8 acceleration_confidence

# Enumeration values for acceleration_confidence
uint8 UNAVAILABLE = 0
uint8 ACCL_100_00 = 1
uint8 ACCL_010_00 = 2
uint8 ACCL_005_00 = 3
uint8 ACCL_001_00 = 4
uint8 ACCL_000_10 = 5
uint8 ACCL_000_05 = 6
uint8 ACCL_000_01 = 7