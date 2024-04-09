#
# DetectedVRUData.msg
#
# Modified J3224 2020 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of DetectedVRUData from the SAE J3224 2020 specification.
# For further usage details consult the specification. See note on SI units above.
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

carma_v2x_msgs/AttachmentRadius radius