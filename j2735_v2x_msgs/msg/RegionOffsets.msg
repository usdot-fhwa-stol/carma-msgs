#
# RegionOffsets.msg
#
# J2735 2024 message format.
#

# RegionOffsets ::= SEQUENCE {
#    xOffset  OffsetLL-B16,
#    yOffset  OffsetLL-B16,
#    zOffset  OffsetLL-B16 OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_Z_OFFSET = 1

j2735_v2x_msgs/OffsetLLB16 x_offset

j2735_v2x_msgs/OffsetLLB16 y_offset

j2735_v2x_msgs/OffsetLLB16 z_offset
