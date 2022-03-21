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

cav_msgs/OffsetLLB18 lat_offset
cav_msgs/OffsetLLB18 lon_offset

cav_msgs/VertOffsetB12 elevation_offset

cav_msgs/TimeOffset time_offset

cav_msgs/Speed speed

cav_msgs/PositionalAccuracy pos_accuracy

cav_msgs/CoarseHeading heading
