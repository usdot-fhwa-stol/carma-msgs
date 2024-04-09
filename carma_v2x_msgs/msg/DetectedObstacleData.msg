#
# DetectedObstacleData.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of DetectedObstacleData from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# DetectedObstacleData::= SEQUENCE {
#    obstSize ObstacleSize,
#    obstSizeConfidence ObstacleSizeConfidence
# } 

carma_v2x_msgs/ObstacleSize obst_size

j3224_v2x_msgs/ObstacleSizeConfidence obst_size_confidence