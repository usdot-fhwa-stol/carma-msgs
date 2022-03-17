#
# TimeConfidence.msg
#
# J2735 2016 message format.
#
# Parsed description of TimeConfidence from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# TimeConfidence ::= ENUMERATED {
#    unavailable              (0), -- Not Equipped or unavailable
#    time-100-000             (1), -- Better than  100 Seconds
#    time-050-000             (2), -- Better than  50 Seconds
#    time-020-000             (3), -- Better than  20 Seconds
#    time-010-000             (4), -- Better than  10 Seconds
#    time-002-000             (5), -- Better than  2 Seconds
#    time-001-000             (6), -- Better than  1 Second
#    time-000-500             (7), -- Better than  0.5 Seconds
#    time-000-200             (8), -- Better than  0.2 Seconds
#    time-000-100             (9), -- Better than  0.1 Seconds
#    time-000-050            (10), -- Better than  0.05 Seconds
#    time-000-020            (11), -- Better than  0.02 Seconds
#    time-000-010            (12), -- Better than  0.01 Seconds
#    time-000-005            (13), -- Better than  0.005 Seconds
#    time-000-002            (14), -- Better than  0.002 Seconds
#    time-000-001            (15), -- Better than  0.001 Seconds
#                                  -- Better than  one millisecond
#    time-000-000-5          (16), -- Better than  0.000,5 Seconds
#    time-000-000-2          (17), -- Better than  0.000,2 Seconds
#    time-000-000-1          (18), -- Better than  0.000,1 Seconds
#    time-000-000-05         (19), -- Better than  0.000,05 Seconds
#    time-000-000-02         (20), -- Better than  0.000,02 Seconds
#    time-000-000-01         (21), -- Better than  0.000,01 Seconds
#    time-000-000-005        (22), -- Better than  0.000,005 Seconds
#    time-000-000-002        (23), -- Better than  0.000,002 Seconds
#    time-000-000-001        (24), -- Better than  0.000,001 Seconds 
#                                  -- Better than  one micro second
#    time-000-000-000-5      (25), -- Better than  0.000,000,5 Seconds
#    time-000-000-000-2      (26), -- Better than  0.000,000,2 Seconds
#    time-000-000-000-1      (27), -- Better than  0.000,000,1 Seconds
#    time-000-000-000-05     (28), -- Better than  0.000,000,05 Seconds
#    time-000-000-000-02     (29), -- Better than  0.000,000,02 Seconds
#    time-000-000-000-01     (30), -- Better than  0.000,000,01 Seconds
#    time-000-000-000-005    (31), -- Better than  0.000,000,005 Seconds
#    time-000-000-000-002    (32), -- Better than  0.000,000,002 Seconds
#    time-000-000-000-001    (33), -- Better than  0.000,000,001 Seconds
#                                  -- Better than  one nano second
#    time-000-000-000-000-5  (34), -- Better than  0.000,000,000,5 Seconds
#    time-000-000-000-000-2  (35), -- Better than  0.000,000,000,2 Seconds
#    time-000-000-000-000-1  (36), -- Better than  0.000,000,000,1 Seconds
#    time-000-000-000-000-05 (37), -- Better than  0.000,000,000,05 Seconds
#    time-000-000-000-000-02 (38), -- Better than  0.000,000,000,02 Seconds
#    time-000-000-000-000-01 (39)  -- Better than  0.000,000,000,01 Seconds 
#    }

uint8 confidence

uint8 UNAVAILABLE = 0
uint8 TIME_100_000 = 1
uint8 TIME_050_000 = 2
uint8 TIME_020_000 = 3
uint8 TIME_010_000 = 4
uint8 TIME_002_000 = 5
uint8 TIME_001_000 = 6
uint8 TIME_000_500 = 7
uint8 TIME_000_200 = 8
uint8 TIME_000_100 = 9
uint8 TIME_000_050 = 10
uint8 TIME_000_020 = 11
uint8 TIME_000_010 = 12
uint8 TIME_000_005 = 13
uint8 TIME_000_002 = 14
uint8 TIME_000_001 = 15
uint8 TIME_000_000_5 = 16
uint8 TIME_000_000_2 = 17
uint8 TIME_000_000_1 = 18
uint8 TIME_000_000_05 = 19
uint8 TIME_000_000_02 = 20
uint8 TIME_000_000_01 = 21
uint8 TIME_000_000_005 = 22
uint8 TIME_000_000_002 = 23
uint8 TIME_000_000_001 = 24
uint8 TIME_000_000_000_5 = 25
uint8 TIME_000_000_000_2 = 26
uint8 TIME_000_000_000_1 = 27
uint8 TIME_000_000_000_05 = 28
uint8 TIME_000_000_000_02 = 29
uint8 TIME_000_000_000_01 = 30
uint8 TIME_000_000_000_005 = 31
uint8 TIME_000_000_000_002 = 32
uint8 TIME_000_000_000_001 = 33
uint8 TIME_000_000_000_000_5 = 34
uint8 TIME_000_000_000_000_2 = 35
uint8 TIME_000_000_000_000_1 = 36
uint8 TIME_000_000_000_000_05 = 37
uint8 TIME_000_000_000_000_02 = 38
uint8 TIME_000_000_000_000_01 = 39