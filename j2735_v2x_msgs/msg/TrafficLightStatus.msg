#
# TrafficLightStatus.msg
#
# J2735 2024 message format.
#

# TrafficLightStatus ::= SEQUENCE {
#    trafficLightType            TrafficLightType,
#    consecutiveTrafficLight     ConsecutiveTrafficLight,
#    trafficLightIntervalType    TrafficLightIntervalType,
#    pedestrianCall              PedestrianCall,
#    actuatedinterval            ActuatedInterval,
#    permissiveNonProtected      PermissiveNonProtected,
#    lightingStatus              TrafficLightingStatus,
#    maxIntervalLength           TimeInSecond-B8,
#    remainingTime               TimeInSecond-B8,
#    directionCode               TrafficLightDirectionCode,
#    reserved                    ReservedBit,
#    ...
#    }

j2735_v2x_msgs/TrafficLightType traffic_light_type

j2735_v2x_msgs/ConsecutiveTrafficLight consecutive_traffic_light

j2735_v2x_msgs/TrafficLightIntervalType traffic_light_interval_type

bool pedestrian_call

bool actuated_interval

j2735_v2x_msgs/PermissiveNonProtected permissive_non_protected

j2735_v2x_msgs/TrafficLightingStatus lighting_status

j2735_v2x_msgs/TimeInSecondB8 max_interval_length

j2735_v2x_msgs/TimeInSecondB8 remaining_time

j2735_v2x_msgs/TrafficLightDirectionCode direction_code

bool reserved
