#
# RoadAuthorityID.msg
#
# J2735 2024 message format.
#

# RoadAuthorityID ::= CHOICE {
#    fullRdAuthID    FullRoadAuthorityID,
#    relRdAuthID     RelativeRoadAuthorityID,
#    ...
#    }
#
# FullRoadAuthorityID ::= OBJECT IDENTIFIER
# RelativeRoadAuthorityID ::= RELATIVE-OID

uint8 choice
uint8 FULL_ROAD_AUTHORITY_ID = 0
uint8 RELATIVE_ROAD_AUTHORITY_ID = 1

uint8[] full_rd_auth_id
uint8[] rel_rd_auth_id
