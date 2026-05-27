#
# IncidentsContainer.msg
#
# J2735 2024 message format.
#

# IncidentsContainer ::= SEQUENCE {
#    responderType       SEQUENCE (SIZE(1..5)) OF ResponderGroupAffected OPTIONAL,
#    incidentLocation    RegionInfo,
#    ...
#    }

uint8 presence_vector

uint8 HAS_RESPONDER_TYPE = 1

j2735_v2x_msgs/ResponderGroupAffected[] responder_type

uint8 RESPONDER_TYPE_MIN_SIZE = 1
uint8 RESPONDER_TYPE_MAX_SIZE = 5

j2735_v2x_msgs/RegionInfo incident_location
