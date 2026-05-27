#
# NTCIPPavementSensorSurfaceCondition.msg
#
# J2735 2024 message format.
#

# NTCIPPavementSensorSurfaceCondition ::= ENUMERATED {
#    other (1),
#    error (2),
#    dry (3),
#    moist (4),
#    chemicallyMoist (5),
#    wet (6),
#    chemicallyWet (7),
#    standingWater (8),
#    frost (9),
#    slush (10),
#    snow (11),
#    ice (12),
#    noReport (13),
#    ...
#    }

uint8 OTHER = 1
uint8 ERROR = 2
uint8 DRY = 3
uint8 MOIST = 4
uint8 CHEMICALLY_MOIST = 5
uint8 WET = 6
uint8 CHEMICALLY_WET = 7
uint8 STANDING_WATER = 8
uint8 FROST = 9
uint8 SLUSH = 10
uint8 SNOW = 11
uint8 ICE = 12
uint8 NO_REPORT = 13

uint8 surface_condition
