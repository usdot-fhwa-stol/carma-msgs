#
# WiperSet.msg
#
# J2735 2016 message format.
#
# @version 0.1
# 

# WiperSet ::= SEQUENCE {
#    statusFront    WiperStatus,
#    rateFront      WiperRate,
#    statusRear     WiperStatus      OPTIONAL,
#    rateRear       WiperRate        OPTIONAL
#    }   

j2735_v2x_msgs/WiperStatus status_front

j2735_v2x_msgs/WiperRate rate_front

j2735_v2x_msgs/WiperStatus status_rear
bool status_rear_exists

j2735_v2x_msgs/WiperRate rate_rear
bool rate_rear_exists