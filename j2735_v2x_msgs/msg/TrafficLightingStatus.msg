#
# TrafficLightingStatus.msg
#
# J2735 2024 message format.
#

# TrafficLightingStatus ::= ENUMERATED {
#    off             (0),
#    red-on          (1),
#    yellow-on       (2),
#    green-on        (3),
#    red-blinking    (4),
#    yellow-blinking (5),
#    green-blinking  (6),
#    ...
#    }

uint8 OFF = 0
uint8 RED_ON = 1
uint8 YELLOW_ON = 2
uint8 GREEN_ON = 3
uint8 RED_BLINKING = 4
uint8 YELLOW_BLINKING = 5
uint8 GREEN_BLINKING = 6

uint8 traffic_lighting_status
