#
# ObstacleDetection.msg
#
# J2735 2016 message format.
#

# ObstacleDetection ::= SEQUENCE {  
#    obDist          ObstacleDistance,        -- Obstacle Distance        
#    obDirect        ObstacleDirection,       -- Obstacle Direction
#    description     ITIS.ITIScodes(523..541) OPTIONAL, 
#                                             -- Uses a limited set of ITIS codes        
#    locationDetails ITIS.GenericLocations OPTIONAL,        
#    dateTime        DDateTime,               -- Time detected
#    vertEvent       VerticalAccelerationThreshold OPTIONAL, 
#                                             -- Any wheels which have 
#                                             -- exceeded the acceleration point
#    ...
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_DESCRIPTION) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_DESCRIPTION
uint16 presence_vector

uint16 HAS_DESCRIPTION = 1
uint16 HAS_LOCATION_DETAILS = 2
uint16 HAS_VERT_EVENT = 4

j2735_v2x_msgs/ObstacleDistance ob_dist

j2735_v2x_msgs/ObstacleDirection ob_direct

j2735_v2x_msgs/DDateTime date_time

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

j2735_v2x_msgs/ITIScodes description
uint16 DESCRIPTION_MIN = 523
uint16 DESCRIPTION_MAX = 541

j2735_v2x_msgs/ITISGenericLocations location_details

j2735_v2x_msgs/VerticalAccelerationThreshold vert_event