#
# YawRateConfidence.msg
#
# J2735 2016 message format.
#

# YawRateConfidence ::= ENUMERATED {
#    unavailable (0), -- B’000 Not Equipped with yaw rate status
#    -- or yaw rate status is unavailable
#    degSec-100-00 (1), -- B’001 100 deg/sec
#    degSec-010-00 (2), -- B’010 10 deg/sec
#    degSec-005-00 (3), -- B’011 5 deg/sec
#    degSec-001-00 (4), -- B’100 1 deg/sec
#    degSec-000-10 (5), -- B’101 0.1 deg/sec
#    degSec-000-05 (6), -- B’110 0.05 deg/sec
#    degSec-000-01 (7) -- B’111 0.01 deg/sec
#    }
#    -- Encoded as a 3 bit value

uint8 yaw_rate_confidence

# enumeration values for yaw_rate_confidence
uint8 DEG_SEC_100_00 = 1
uint8 DEG_SEC_010_00 = 2
uint8 DEG_SEC_005_00 = 3
uint8 DEG_SEC_001_00 = 4
uint8 DEG_SEC_000_10 = 5
uint8 DEG_SEC_000_05 = 6
uint8 DEG_SEC_000_01 = 7