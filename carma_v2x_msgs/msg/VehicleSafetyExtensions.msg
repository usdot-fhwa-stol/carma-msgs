#
# VehicleSafetyExtensions.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# VehicleSafetyExtensions ::= SEQUENCE {
#    events             VehicleEventFlags OPTIONAL,
#    pathHistory        PathHistory       OPTIONAL, 
#    pathPrediction     PathPrediction    OPTIONAL,
#    lights             ExteriorLights    OPTIONAL,                       
#    ...
#    }

j2735_v2x_msgs/VehicleEventFlags events
bool events_exists

carma_v2x_msgs/PathHistory path_history
bool path_history_exists

carma_v2x_msgs/PathPrediction path_prediction
bool path_prediction_exists

j2735_v2x_msgs/ExteriorLights lights
bool lights_exists

