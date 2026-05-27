#
# DynamicInfoContainer.msg
#
# J2735 2024 message format.
#

# DynamicInfoContainer ::= SEQUENCE {
#    priority          ENUMERATED { low-priority(0), medium-priority(1),
#                                   high-priority(2), critical(3) },
#    dmsSignString     SEQUENCE SIZE(1..12) OF ShortString,
#    applicableRegion  RegionInfo,
#    ...
#    }

uint8 priority

uint8 LOW_PRIORITY = 0
uint8 MEDIUM_PRIORITY = 1
uint8 HIGH_PRIORITY = 2
uint8 CRITICAL = 3

j2735_v2x_msgs/ShortString[] dms_sign_string

uint8 DMS_SIGN_STRING_MIN_SIZE = 1
uint8 DMS_SIGN_STRING_MAX_SIZE = 12

j2735_v2x_msgs/RegionInfo applicable_region
