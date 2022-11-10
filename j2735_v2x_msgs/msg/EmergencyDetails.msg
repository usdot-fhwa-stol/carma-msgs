#
# EmergencyDetails.msg
#
# J2735 2016 message format.
#

# EmergencyDetails ::= SEQUENCE {
#  notUsed SSPindex,
# -- always set to 0 and carries no meaning;
# -- legacy field maintained for backward compatibility
#  sirenUse SirenInUse,
#  lightsUse LightbarInUse,
#  multi MultiVehicleResponse,
#  events PrivilegedEvents OPTIONAL,
#  responseType ResponseType OPTIONAL,
#  ...
# }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_EVENTS) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_EVENTS
uint16 presence_vector

uint16 HAS_EVENTS = 1
uint16 HAS_RESPONSE_TYPE = 2

uint8 ssp_index

# SirenInUse ::= ENUMERATED {
#   unavailable (0), -- Not Equipped or unavailable
#   notInUse (1),
#   inUse (2),
#   reserved (3) -- for future use
# }

j2735_v2x_msgs/SirenInUse siren_use

j2735_v2x_msgs/LightbarInUse lights_use

j2735_v2x_msgs/MultiVehicleResponse multi

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

j2735_v2x_msgs/PrivilegedEvents events

j2735_v2x_msgs/ResponseType response_type