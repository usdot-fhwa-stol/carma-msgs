#
# TrailerHistoryPoint.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

#    pivotAngle       Angle,
#                     -- angle with respect to the lead unit
j2735_v2x_msgs/Angle pivot_angle

#    timeOffset       TimeOffset,
#                     -- offset backwards in time 
j2735_v2x_msgs/TimeOffset time_offset

#    -- Position relative to the hauling Vehicle
#    positionOffset   Node-XY-24b, 
#    elevationOffset  VertOffset-B07 OPTIONAL,   
#    heading          CoarseHeading OPTIONAL, 
#                     -- overall heading 
j2735_v2x_msgs/NodeXY24b position_offset

j2735_v2x_msgs/VertOffsetB07 elevation_offset
bool elevation_offset_exists

j2735_v2x_msgs/CoarseHeading heading
bool heading_exists