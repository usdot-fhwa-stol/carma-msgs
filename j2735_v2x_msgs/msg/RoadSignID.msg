#
# RoadSignID.msg
#
# J2735 2024 message format.
#

# RoadSignID ::= SEQUENCE {
#    position        Position3D,
#    viewAngle       HeadingSlice,
#    mutcdCode       MUTCDCode OPTIONAL,
#    crc             MsgCRC    OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_MUTCD_CODE = 1
uint8 HAS_CRC = 2

j2735_v2x_msgs/Position3D position

j2735_v2x_msgs/HeadingSlice view_angle

j2735_v2x_msgs/MUTCDCode mutcd_code

j2735_v2x_msgs/MsgCRC crc
