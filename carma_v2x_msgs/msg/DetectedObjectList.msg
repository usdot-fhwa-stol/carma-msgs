#
# DetectedObjectList.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of DetectedObjectList from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
#

# DetectedObjectList::= SEQUENCE (SIZE(1..256)) OF DetectedObjectData

carma_v2x_msgs/DetectedObjectData[] detected_object_data

uint16 DETECTED_OBJECT_DATA_MIN_SIZE = 1
uint16 DETECTED_OBJECT_DATA_MAX_SIZE = 256