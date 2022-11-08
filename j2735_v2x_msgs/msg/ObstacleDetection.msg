#
# ObstacleDetection.msg
#
# J2735 2016 message format.
#
# @version 0.1
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

j2735_v2x_msgs/ObstacleDistance ob_dist

j2735_v2x_msgs/ObstacleDirection ob_direct

j2735_v2x_msgs/ITIScodes description
bool description_available

j2735_v2x_msgs/ITISGenericLocations location_details
bool location_details_exists

j2735_v2x_msgs/DDateTime date_time

j2735_v2x_msgs/VerticalAccelerationThreshold vert_event
bool vert_event_exists