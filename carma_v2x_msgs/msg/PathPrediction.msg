#
# PathPrediction.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PathPrediction from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#

# RadiusOfCurvature in meters in range (-327.67..327.67)
float32 radius_of_curvature

float32 MIN_RADIUS=-327.67
float32 MAX_RADIUS=327.67


# Confidence percentage in range (0..1.0)
float32 confidence

float32 MIN_CONFIDENCE=0.0
float32 MAX_CONFIDENCE=1.0
