#
# TrailerHistoryPoint.msg
#
# J2735 2016 message format.
#

# TrailerHistoryPoint ::= SEQUENCE {
#    pivotAngle       Angle,
#                     -- angle with respect to the lead unit
#    timeOffset       TimeOffset,
#                     -- offset backwards in time 
#    -- Position relative to the hauling Vehicle
#    positionOffset   Node-XY-24b, 
#    elevationOffset  VertOffset-B07 OPTIONAL,   
#    heading          CoarseHeading OPTIONAL, 
#                     -- overall heading 
#    ...
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_ELEVATION_OFFSET) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_ELEVATION_OFFSET
uint16 presence_vector

uint16 HAS_ELEVATION_OFFSET = 1
uint16 HAS_HEADING = 2

j2735_v2x_msgs/Angle pivot_angle

j2735_v2x_msgs/TimeOffset time_offset

j2735_v2x_msgs/NodeXY24b position_offset

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

j2735_v2x_msgs/VertOffsetB07 elevation_offset

j2735_v2x_msgs/CoarseHeading heading