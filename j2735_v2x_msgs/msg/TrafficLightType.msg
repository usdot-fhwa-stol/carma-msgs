#
# TrafficLightType.msg
#
# J2735 2024 message format.
#

# TrafficLightType ::= ENUMERATED {
#    reserved, straight, left-turn, pedestrian,
#    bicycle, right-turn, bus, u-turn,
#    ...
#    }

uint8 RESERVED = 0
uint8 STRAIGHT = 1
uint8 LEFT_TURN = 2
uint8 PEDESTRIAN = 3
uint8 BICYCLE = 4
uint8 RIGHT_TURN = 5
uint8 BUS = 6
uint8 U_TURN = 7

uint8 traffic_light_type
