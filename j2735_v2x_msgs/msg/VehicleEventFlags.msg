#
# VehicleEventFLags.msg
#
# J2735 2016 message format.
#

# VehicleEventFlags ::= BIT STRING {
#    eventHazardLights               (0),
#    eventStopLineViolation          (1), -- Intersection Violation   
#    eventABSactivated               (2),
#    eventTractionControlLoss        (3),
#    eventStabilityControlactivated  (4),
#    eventHazardousMaterials         (5),
#    eventReserved1                  (6),   
#    eventHardBraking                (7),
#    eventLightsChanged              (8),
#    eventWipersChanged              (9),
#    eventFlatTire                   (10),
#    eventDisabledVehicle            (11), -- The DisabledVehicle DF may also be sent
#    eventAirBagDeployment           (12)
#    } (SIZE (13, ...))

uint16 vehicle_event_flag

uint16 EVENT_HAZARD_LIGHTS=0
uint16 EVENT_STOP_LINE_VIOLATION=1
uint16 EVENT_ABS_ACTIVATED=2
uint16 EVENT_TRACTION_CONTROL_LOSS=4
uint16 EVENT_STABILITY_CONTROL_ACTIVATED=8
uint16 EVENT_HAZARDOUS_MATERIALS=16
uint16 EVENT_RESERVED1=32
uint16 EVENT_HARD_BRAKING=64
uint16 EVENT_LIGHTS_CHANGED=128
uint16 EVENT_WIPERS_CHANGED=256
uint16 EVENT_FLAT_TIRE=512
uint16 EVENT_DISABLED_VEHICLE=1024
uint16 EVENT_AIR_BAG_DEPLOYMENT=2048
