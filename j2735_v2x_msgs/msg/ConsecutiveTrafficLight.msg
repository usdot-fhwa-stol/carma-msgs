#
# ConsecutiveTrafficLight.msg
#
# J2735 2024 message format.
#

# ConsecutiveTrafficLight ::= ENUMERATED {
#    none    (0),
#    first   (1),
#    second  (2),
#    ...
#    }

uint8 NONE = 0
uint8 FIRST = 1
uint8 SECOND = 2

uint8 consecutive_traffic_light
