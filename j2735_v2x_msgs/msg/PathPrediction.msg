#
# PathPrediction.msg
#
# J2735 2016 message format.
#
# Parsed description of PathPrediction from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PathPrediction ::= SEQUENCE {
#    radiusOfCurve RadiusOfCurvature, 
#                  -- LSB units of 10cm
#                  -- straight path to use value of 32767
#    confidence    Confidence, 
#                  -- LSB units of 0.5 percent
#    ...  
#    }

# RadiusOfCurvature ::= INTEGER (-32767..32767)
#    -- LSB units of 10cm
#    -- A straight path to use value of 32767
int16 radius_of_curvature


# Confidence ::= INTEGER (0..200)
#    -- LSB units of 0.5 percent
uint8 confidence