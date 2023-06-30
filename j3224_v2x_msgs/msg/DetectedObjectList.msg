#
# DetectedObjectList.msg
#
# J3224 2020 message format.
#

# DetectedObjectList::= SEQUENCE (SIZE(1..256)) OF DetectedObjectData

j3224_v2x_msgs/DetectedObjectData[] detected_object_data

uint16 DETECTED_OBJECT_DATA_MIN_SIZE = 1
uint16 DETECTED_OBJECT_DATA_MAX_SIZE = 256
