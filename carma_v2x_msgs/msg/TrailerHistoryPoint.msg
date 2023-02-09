#
# TrailerHistoryPoint.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
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

carma_v2x_msgs/Angle pivot_angle

carma_v2x_msgs/TimeOffset time_offset

carma_v2x_msgs/NodeXY24b position_offset

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

carma_v2x_msgs/VertOffsetB07 elevation_offset

carma_v2x_msgs/CoarseHeading heading