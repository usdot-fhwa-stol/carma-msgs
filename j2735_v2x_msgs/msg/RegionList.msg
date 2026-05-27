#
# RegionList.msg
#
# J2735 2024 message format.
#

# RegionList ::= SEQUENCE (SIZE(1..64)) OF RegionOffsets

j2735_v2x_msgs/RegionOffsets[] region_offsets

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 64
