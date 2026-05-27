#
# TravelerDataFrame.msg
#
# J2735 2024 message format.
#

# TravelerDataFrame ::= SEQUENCE {
#    doNotUse1    SSPindex,
#    frameType    TravelerInfoType,
#    msgId CHOICE {
#          furtherInfoID   FurtherInfoID,
#          roadSignID      RoadSignID
#          },
#    startYear    DYear OPTIONAL,
#    startTime    MinuteOfTheYear,
#    durationTime MinutesDuration,
#    priority     SignPriority,
#    doNotUse2    SSPindex,
#    regions SEQUENCE (SIZE(1..16)) OF GeographicalPath,
#    doNotUse3    SSPindex,
#    doNotUse4    SSPindex,
#    content  CHOICE {
#             advisory     ITIScodesAndText,
#             workZone     WorkZone,
#             genericSign  GenericSignage,
#             speedLimit   SpeedLimit,
#             exitService  ExitService
#             },
#    url     URL-Short OPTIONAL,
#    ...,
#    contentNew    TravelerDataFrameNewPartIIIContent
#    }

uint8 presence_vector

uint8 HAS_START_YEAR = 1
uint8 HAS_URL = 2

j2735_v2x_msgs/SSPindex do_not_use1

j2735_v2x_msgs/TravelerInfoType frame_type

uint8 msg_id_choice

uint8 FURTHER_INFO_ID = 0
uint8 ROAD_SIGN_ID = 1

j2735_v2x_msgs/FurtherInfoID further_info_id

j2735_v2x_msgs/RoadSignID road_sign_id

j2735_v2x_msgs/DYear start_year

j2735_v2x_msgs/MinuteOfTheYear start_time

j2735_v2x_msgs/MinutesDuration duration_time

j2735_v2x_msgs/SignPriority priority

j2735_v2x_msgs/SSPindex do_not_use2

j2735_v2x_msgs/GeographicalPath[] regions

uint8 REGIONS_MIN_SIZE = 1
uint8 REGIONS_MAX_SIZE = 16

j2735_v2x_msgs/SSPindex do_not_use3

j2735_v2x_msgs/SSPindex do_not_use4

uint8 content_choice

uint8 ADVISORY = 0
uint8 WORK_ZONE = 1
uint8 GENERIC_SIGN = 2
uint8 SPEED_LIMIT = 3
uint8 EXIT_SERVICE = 4

j2735_v2x_msgs/ITIScodesAndText advisory

j2735_v2x_msgs/WorkZone work_zone

j2735_v2x_msgs/GenericSignage generic_sign

j2735_v2x_msgs/TravelerInfoSpeedLimit speed_limit

j2735_v2x_msgs/ExitService exit_service

j2735_v2x_msgs/URLShort url

j2735_v2x_msgs/TravelerDataFrameNewPartIIIContent content_new
