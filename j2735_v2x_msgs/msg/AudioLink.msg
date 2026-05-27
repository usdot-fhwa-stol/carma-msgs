#
# AudioLink.msg
#
# J2735 2024 message format.
#

# AudioLink ::= SEQUENCE {
#    amChannel           INTEGER (531..1710)        OPTIONAL,
#    fmChannel           INTEGER (65800..108009)    OPTIONAL,
#    satelliteChannel    INTEGER (1..9999)          OPTIONAL,
#    urlChannel          IA5String (SIZE(1..500))   OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_AM_CHANNEL = 1
uint8 HAS_FM_CHANNEL = 2
uint8 HAS_SATELLITE_CHANNEL = 4
uint8 HAS_URL_CHANNEL = 8

uint16 am_channel

uint16 AM_CHANNEL_MIN = 531
uint16 AM_CHANNEL_MAX = 1710

uint32 fm_channel

uint32 FM_CHANNEL_MIN = 65800
uint32 FM_CHANNEL_MAX = 108009

uint16 satellite_channel

uint16 SATELLITE_CHANNEL_MIN = 1
uint16 SATELLITE_CHANNEL_MAX = 9999

string url_channel
