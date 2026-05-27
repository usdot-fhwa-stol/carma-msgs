#
# TravelerInformation.msg
#
# J2735 2024 message format.
#

# TravelerInformation ::= SEQUENCE {
#    msgCnt      MsgCount,
#    timeStamp   MinuteOfTheYear OPTIONAL,
#    packetID    UniqueMSGID     OPTIONAL,
#    urlB        URL-Base        OPTIONAL,
#    dataFrames  TravelerDataFrameList,
#    regional    SEQUENCE (SIZE(1..4)) OF RegionalExtension OPTIONAL,
#    ...
#    }

std_msgs/Header header

uint8 presence_vector

uint8 HAS_TIME_STAMP = 1
uint8 HAS_PACKET_ID = 2
uint8 HAS_URL_B = 4
uint8 HAS_REGIONAL = 8

j2735_v2x_msgs/MsgCount msg_cnt

j2735_v2x_msgs/MinuteOfTheYear time_stamp

j2735_v2x_msgs/UniqueMSGID packet_id

j2735_v2x_msgs/URLBase url_b

j2735_v2x_msgs/TravelerDataFrameList data_frames

j2735_v2x_msgs/RegionalExtension[] regional

uint8 REGIONAL_MIN_SIZE = 1
uint8 REGIONAL_MAX_SIZE = 4
