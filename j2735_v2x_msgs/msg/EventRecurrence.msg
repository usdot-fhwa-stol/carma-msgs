#
# EventRecurrence.msg
#
# J2735 2024 message format.
#

# EventRecurrence ::= SEQUENCE {
#    startTime   DTime  OPTIONAL,
#    endTime     DTime  OPTIONAL,
#    startDate   DDate  OPTIONAL,
#    endDate     DDate  OPTIONAL,
#    monday      BOOLEAN,
#    tuesday     BOOLEAN,
#    wednesday   BOOLEAN,
#    thursday    BOOLEAN,
#    friday      BOOLEAN,
#    saturday    BOOLEAN,
#    sunday      BOOLEAN,
#    exclusion   BOOLEAN     OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_START_TIME = 1
uint8 HAS_END_TIME = 2
uint8 HAS_START_DATE = 4
uint8 HAS_END_DATE = 8
uint8 HAS_EXCLUSION = 16

j2735_v2x_msgs/DTime start_time

j2735_v2x_msgs/DTime end_time

j2735_v2x_msgs/DDate start_date

j2735_v2x_msgs/DDate end_date

bool monday

bool tuesday

bool wednesday

bool thursday

bool friday

bool saturday

bool sunday

bool exclusion
