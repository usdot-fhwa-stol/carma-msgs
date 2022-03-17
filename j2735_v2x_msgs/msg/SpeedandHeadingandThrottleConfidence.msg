#
# SpeedandHeadingandThrottleConfidence.msg
#
# J2735 2016 message format.
#
# Parsed description of SpeedandHeadingandThrottleConfidence from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# SpeedandHeadingandThrottleConfidence ::= SEQUENCE {
#    heading   HeadingConfidence,    
#    speed     SpeedConfidence,      
#    throttle  ThrottleConfidence    
#    }

j2735_v2x_msgs/HeadingConfidence heading
j2735_v2x_msgs/SpeedConfidence speed
j2735_v2x_msgs/ThrottleConfidence throttle