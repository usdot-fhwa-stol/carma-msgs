#
# EventIdentifier.msg
#
# J2735 2024 message format.
#

# EventIdentifier ::= SEQUENCE {
#    operatorID      RoadAuthorityID,
#    uniqueID        TemporaryID,
#    ...
#    }

j2735_v2x_msgs/RoadAuthorityID operator_id

j2735_v2x_msgs/TemporaryID unique_id
