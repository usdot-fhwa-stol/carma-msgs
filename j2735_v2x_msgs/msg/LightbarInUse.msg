#
# LightbarInUse.msg
#
# J2735 2016 message format.
#

#  LightbarInUse ::= ENUMERATED {
#  unavailable (0), -- Not Equipped or unavailable
#  notInUse (1), -- none active
#  inUse (2),
#  yellowCautionLights (3),
#  schoolBusLights (4),
#  arrowSignsActive (5),
#  slowMovingVehicle (6),
#  freqStops (7)
#  }

uint8 lightbar_in_use

# enumeration values for lightbar_in_use:
uint8 UNAVAILABLE=0
uint8 NOT_IN_USE=1
uint8 IN_USE=2
uint8 YELLOW_CAUTION_LIGHTS=3
uint8 SCHOOL_BUS_LIGHTS=4
uint8 ARROW_SIGNS_ACTIVE=5
uint8 SLOW_MOVING_VEHICLE=6
uint8 FREQ_STOPS=7