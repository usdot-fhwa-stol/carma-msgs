#
# TrafficLightIntervalType.msg
#
# J2735 2024 message format.
#

# TrafficLightIntervalType ::= ENUMERATED {
#    static      (0),
#    variable    (1),
#    ...
#    }

uint8 STATIC = 0
uint8 VARIABLE = 1

uint8 traffic_light_interval_type
