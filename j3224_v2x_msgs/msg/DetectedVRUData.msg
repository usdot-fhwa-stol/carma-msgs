#
# DetectedVRUData.msg
#
# J3224 2020 message format.
#

# DetectedVRUData::= SEQUENCE {
#    basicType PersonalDeviceUserType OPTIONAL,
#    propulsion PropelledInformation OPTIONAL,
#    attachment Attachment OPTIONAL,
#    radius AttachmentRadius OPTIONAL
# } 

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_BASIC_TYPE) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_BASIC_TYPE
uint8 presence_vector

uint8 HAS_BASIC_TYPE = 1
uint8 HAS_PROPULSION = 2
uint8 HAS_ATTACHMENT = 4
uint8 HAS_RADIUS = 8

j2735_v2x_msgs/PersonalDeviceUserType basic_type 

j2735_v2x_msgs/PropelledInformation propulsion 

j2735_v2x_msgs/Attachment attachment

j2735_v2x_msgs/AttachmentRadius radius