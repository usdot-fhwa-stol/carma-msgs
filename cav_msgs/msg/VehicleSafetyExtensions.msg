#
# VehicleSafetyExtensions.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# VehicleSafetyExtensions ::= SEQUENCE {
#    events             VehicleEventFlags OPTIONAL,
#    pathHistory        PathHistory       OPTIONAL, 
#    pathPrediction     PathPrediction    OPTIONAL,
#    lights             ExteriorLights    OPTIONAL,                       
#    ...
#    }

# A BIT STRING defining the presence of optional feilds.
# Compare with bitwise-and
# if (presence_vector & HAS_EVENTS) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_EVENTS
uint16 presence_vector

uint16 HAS_EVENTS = 1
uint16 HAS_PATH_HISTORY = 2
uint16 HAS_PATH_PREDICTION = 4
uint16 HAS_LIGHTS = 8

j2735_v2x_msgs/VehicleEventFlags events

cav_msgs/PathHistory path_history

cav_msgs/PathPrediction path_prediction

j2735_v2x_msgs/ExteriorLights lights

