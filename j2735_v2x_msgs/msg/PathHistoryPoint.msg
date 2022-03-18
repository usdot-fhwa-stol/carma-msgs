#
# PathHistoryPoint.msg
#
# J2735 2016 message format.
#
# Parsed description of PathHistoryPoint from the SAE J2735 2016 specification.
# For further usage details consult the specification.
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

j2735_v2x_msgs/OffsetLLB18 lat_offset
j2735_v2x_msgs/OffsetLLB18 lon_offset

j2735_v2x_msgs/VertOffsetB12 elevation_offset

j2735_v2x_msgs/TimeOffset time_offset

j2735_v2x_msgs/Speed speed

j2735_v2x_msgs/PositionalAccuracy pos_accuracy

j2735_v2x_msgs/CoarseHeading heading
