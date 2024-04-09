#
# EquipmentType.msg
#
# J3224 2020 message format.
#

# EquipmentType ::= ENUMERATED{
#   unknown (0),
#   rsu (1),
#   obu (2),
#   vru (3),
#   ...
# }

uint8  equipment_type 

# enumeration values for equipment_type:
uint8  UNKNOWN = 0
uint8  RSU = 1
uint8  OBU = 2
uint8  VRU = 3