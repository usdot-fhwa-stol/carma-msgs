#
# DetectedObjectData.msg
#
# J3224 2020 message format.
#

# DetectedObjectData::= SEQUENCE {
#   detObjCommon DetectedObjectCommonData,
#   -- Common data for detected object
#   detObjOptData DetectedObjectOptionalData OPTIONAL
#   -- Type specific optional data
# }

j3224_v2x_msgs/DetectedObjectCommonData detected_object_common_data

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_DETECTED_OBJECT_OPTIONAL_DATA) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_DETECTED_OBJECT_OPTIONAL_DATA
uint8 presence_vector

uint8 HAS_DETECTED_OBJECT_OPTIONAL_DATA = 1

j3224_v2x_msgs/DetectedObjectOptionalData detected_object_optional_data