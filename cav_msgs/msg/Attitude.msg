#
# Attitude.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of Attitude from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# Attitude ::= SEQUENCE {
#   pitch PitchDetected,
#   roll RollDetected,
#   yaw YawDetected
# }

cav_msgs/PitchDetected pitch

cav_msgs/RollDetected roll

cav_msgs/YawDetected yaw