#
# GNSSStatus.msg
#
# J2735 2016 message format.
#
# Parsed description of GNSSstatus from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# GNSSstatus ::= BIT STRING {
#    unavailable               (0), -- Not Equipped or unavailable
#    isHealthy                 (1),
#    isMonitored               (2),
#    baseStationType           (3), -- Set to zero if a moving base station,
#                                   -- or if a rover device (an OBU),
#                                   -- set to one if it is a fixed base station 
#    aPDOPofUnder5             (4), -- A dilution of precision greater than 5
#    inViewOfUnder5            (5), -- Less than 5 satellites in view
#    localCorrectionsPresent   (6), -- DGPS type corrections used
#    networkCorrectionsPresent (7)  -- RTK type corrections used
#    } (SIZE(8))

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (statuses & BASE_STATION_TYPE) etc.
# Create with bitwise-or
# statuses = statuses | BASE_STATION_TYPE
uint8 statuses

uint8 UNAVAILABLE = 0
uint8 IS_HEALTHY = 1
uint8 IS_MONITORED = 2
uint8 BASE_STATION_TYPE = 4
uint8 APDOP_OF_UNDER_5 = 8
uint8 IN_VIEW_OF_UNDER_5 = 16
uint8 LOCAL_CORRECTIONS_PRESENT = 32
uint8 NETWORK_CORRECTIONS_PRESENT = 64