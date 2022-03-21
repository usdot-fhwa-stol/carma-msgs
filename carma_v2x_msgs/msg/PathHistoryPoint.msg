#
# PathHistoryPoint.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PathHistoryPoint from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# PathHistoryPoint ::= SEQUENCE {
#    latOffset       OffsetLL-B18,
#    lonOffset       OffsetLL-B18,
#    elevationOffset VertOffset-B12,  
#    timeOffset      TimeOffset,
#                    -- Offset backwards in time 
#    speed           Speed                 OPTIONAL, 
#                    -- Speed over the reported period
#    posAccuracy     PositionalAccuracy    OPTIONAL, 
#                    -- The accuracy of this value
#    heading         CoarseHeading         OPTIONAL, 
#                    -- overall heading 
#    ...
#    }

carma_v2x_msgs/OffsetLLB18 lat_offset
carma_v2x_msgs/OffsetLLB18 lon_offset

carma_v2x_msgs/VertOffsetB12 elevation_offset

carma_v2x_msgs/TimeOffset time_offset

carma_v2x_msgs/Speed speed

carma_v2x_msgs/PositionalAccuracy pos_accuracy

carma_v2x_msgs/CoarseHeading heading
