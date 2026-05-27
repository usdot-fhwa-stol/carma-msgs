#
# Obstructions.msg
#
# J2735 2024 message format.
#

# Obstructions ::= SEQUENCE {
#    location        Position3D,
#    description     ITIScodes   OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_DESCRIPTION = 1

j2735_v2x_msgs/Position3D location

j2735_v2x_msgs/ITIScodes description
