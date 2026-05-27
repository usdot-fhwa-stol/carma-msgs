#
# TravelerInfoType.msg
#
# J2735 2024 message format.
#

# TravelerInfoType ::= ENUMERATED {
#    unknown            (0),
#    advisory           (1),
#    roadSignage        (2),
#    commercialSignage  (3),
#    ...
#    }

uint8 UNKNOWN = 0
uint8 ADVISORY = 1
uint8 ROAD_SIGNAGE = 2
uint8 COMMERCIAL_SIGNAGE = 3

uint8 traveler_info_type
