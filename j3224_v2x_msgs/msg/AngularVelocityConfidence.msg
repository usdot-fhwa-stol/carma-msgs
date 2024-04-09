#
# AngularVelocityConfidence.msg
#
# J3224 2020 message format.
#

# AngularVelocityConfidence ::= SEQUENCE {
#   pitchRateConfidence PitchRateConfidenceOPTIONAL,
#   rollRateConfidence RollRateConfidence OPTIONAL
# } 

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_PITCH_RATE_CONFIDENCE) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_PITCH_RATE_CONFIDENCE
uint8 presence_vector

uint8 HAS_PITCH_RATE_CONFIDENCE = 1
uint8 HAS_ROLL_RATE_CONFIDENCE = 2

j3224_v2x_msgs/PitchRateConfidence pitch_rate_confidence

j3224_v2x_msgs/RollRateConfidence roll_rate_confidence