#
# DetectedObjectOptionalData.msg
#
# J3224 2020 message format.
#

# DetectedObjectOptionalData ::= CHOICE {
#    detVeh DetectedVehicleData,
#    -- Detected vehicle data
#    detVRU DetectedVRUData,
#    -- Detected VRU data
#    detObst DetectedObstacleData
#    -- Detected obstacle data
# } 

uint8 choice
uint8 DET_VEH=0
uint8 DET_VRU=1
uint8 DET_OBST=2

j3224_v2x_msgs/DetectedVehicleData det_veh

j3224_v2x_msgs/DetectedVRUData det_vru

j3224_v2x_msgs/DetectedObstacleData det_obst