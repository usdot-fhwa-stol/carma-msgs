#
# AngularVelocity.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of AngularVelocity from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# AngularVelocity ::= SEQUENCE {
#    pitchRate PitchRate,
#    rollRate RollRate
# } 

cav_msgs/PitchRate pitch_rate 

cav_msgs/RollRate roll_rate