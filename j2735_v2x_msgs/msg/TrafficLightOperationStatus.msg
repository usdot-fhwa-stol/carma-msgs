#
# TrafficLightOperationStatus.msg
#
# J2735 2024 message format.
#

# TrafficLightOperationStatus ::= BIT STRING {
#    manual          (0),
#    flashing        (1),
#    off             (2),
#    actuated        (3),
#    transition      (4),
#    priority        (5),
#    holding-phase   (6),
#    reserved        (7)
#    } (SIZE(8, ...))

uint8 MANUAL = 1
uint8 FLASHING = 2
uint8 OFF = 4
uint8 ACTUATED = 8
uint8 TRANSITION = 16
uint8 PRIORITY = 32
uint8 HOLDING_PHASE = 64
uint8 RESERVED = 128

uint8 traffic_light_operation_status
