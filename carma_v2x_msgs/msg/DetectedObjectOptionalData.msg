#
# DetectedObjectOptionalData.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of DetectedObjectOptionalData from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
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

carma_v2x_msgs/DetectedVehicleData det_veh

carma_v2x_msgs/DetectedVRUData det_vru

carma_v2x_msgs/DetectedObstacleData det_obst