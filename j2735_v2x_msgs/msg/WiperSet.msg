#
# WiperSet.msg
#
# J2735 2016 message format.
#

# WiperSet ::= SEQUENCE {
#    statusFront    WiperStatus,
#    rateFront      WiperRate,
#    statusRear     WiperStatus      OPTIONAL,
#    rateRear       WiperRate        OPTIONAL
#    }   

# A BIT STRING defining the presence of optional feilds.
# Compare with bitwise-and
# if (presence_vector & HAS_STATUS_REAR) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_STATUS_REAR
uint16 presence_vector

uint16 HAS_STATUS_REAR = 1
uint16 HAS_RATE_REAR = 2

j2735_v2x_msgs/WiperStatus status_front

j2735_v2x_msgs/WiperRate rate_front

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

j2735_v2x_msgs/WiperStatus status_rear

j2735_v2x_msgs/WiperRate rate_rear