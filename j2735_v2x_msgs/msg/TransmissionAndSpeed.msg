#
# TransmissionAndSpeed.msg
#
# J2735 2016 message format.
#
# Parsed description of TransmissionAndSpeed from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# TransmissionAndSpeed ::= SEQUENCE {
#    transmisson   TransmissionState,
#    speed         Velocity
#    }

j2735_v2x_msgs/TransmissionState transmission

j2735_v2x_msgs/Velocity speed