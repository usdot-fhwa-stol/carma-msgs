#
# Offset3D.msg
#
# J2735 2024 message format.
#

# Offset3D ::= SEQUENCE {
#    lat-offset      LatOffset,
#    long-offset     LongOffset,
#    elev-offset     ElevOffset    OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_ELEV_OFFSET = 1

j2735_v2x_msgs/LatOffset lat_offset

j2735_v2x_msgs/LongOffset long_offset

j2735_v2x_msgs/ElevOffset elev_offset
