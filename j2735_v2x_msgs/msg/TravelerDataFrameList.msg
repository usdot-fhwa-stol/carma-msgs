#
# TravelerDataFrameList.msg
#
# J2735 2024 message format.
#

# TravelerDataFrameList ::= SEQUENCE (SIZE(1..8)) OF TravelerDataFrame

j2735_v2x_msgs/TravelerDataFrame[] traveler_data_frame

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 8
