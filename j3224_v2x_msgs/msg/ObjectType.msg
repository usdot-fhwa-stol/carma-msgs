#
# ObjectType.msg
#
# J3224 2020 message format.
#

# ObjectType::= ENUMERATED{
#    unknown (0),
#    vehicle (1),
#    vru (2),
#    animal (3),
#    ...
# } 

uint8 object_type

# enumeration values for object_type:
uint8 UNKNOWN = 0
uint8 VEHICLE = 1
uint8 VRU = 2
uint8 ANIMAL = 3