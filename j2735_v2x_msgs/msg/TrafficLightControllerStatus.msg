#
# TrafficLightControllerStatus.msg
#
# J2735 2024 message format.
#

# TrafficLightControllerStatus ::= BIT STRING {
#    conflict            (0),
#    center-comm-error   (1),
#    scu-comm-error      (2),
#    reserved1           (3),
#    reserved2           (4),
#    reserved3           (5),
#    reserved4           (6),
#    reserved5           (7)
#    } (SIZE(8, ...))

uint8 CONFLICT = 1
uint8 CENTER_COMM_ERROR = 2
uint8 SCU_COMM_ERROR = 4
uint8 RESERVED1 = 8
uint8 RESERVED2 = 16
uint8 RESERVED3 = 32
uint8 RESERVED4 = 64
uint8 RESERVED5 = 128

uint8 traffic_light_controller_status
