#
# Extent.msg
#
# J2735 2016 message format.
#

# Extent ::= ENUMERATED {
#    useInstantlyOnly     (0),
#    useFor3meters        (1),
#    useFor10meters       (2),
#    useFor50meters       (3),
#    useFor100meters      (4),
#    useFor500meters      (5),
#    useFor1000meters     (6),
#    useFor5000meters     (7),
#    useFor10000meters    (8),
#    useFor50000meters    (9),
#    useFor100000meters   (10),
#    useFor500000meters   (11),
#    useFor1000000meters  (12),
#    useFor5000000meters  (13),
#    useFor10000000meters (14),
#    forever              (15)  -- very wide area
#    }  -- Encoded as a 4 bit value

uint8 extent_value

uint8 USE_INSTANTLY_ONLY=0
uint8 USE_FOR_3_METERS=1
uint8 USE_FOR_10_METERS=2
uint8 USE_FOR_50_METERS=3
uint8 USE_FOR_100_METERS=4
uint8 USE_FOR_500_METERS=5
uint8 USE_FOR_1000_METERS=6
uint8 USE_FOR_5000_METERS=7
uint8 USE_FOR_10000_METERS=8
uint8 USE_FOR_50000_METERS=9
uint8 USE_FOR_100000_METERS=10
uint8 USE_FOR_500000_METERS=11
uint8 USE_FOR_1000000_METERS=12
uint8 USE_FOR_5000000_METERS=13
uint8 USE_FOR_10000000_METERS=14
uint8 FOREVER=15