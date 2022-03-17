#
# PositionConfidenceSet.msg
#
# J2735 2016 message format.
#
# Parsed description of PositionConfidenceSet from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PositionConfidenceSet ::= SEQUENCE {
#    pos        PositionConfidence, -- for both horizontal directions
#    elevation  ElevationConfidence 
#    }

j2735_msgs/PositionConfidence pos

j2735_msgs/ElevationConfidence elevation