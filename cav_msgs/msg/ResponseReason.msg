# ResponseReason.msg
#
# Helper message for MobilityResponse.msg to define the specifics of a provided response.
#

# Variable which can be used to store a specific response explanation value.
uint8 explanation

# enumeration values for response reason:
uint8       UNKNOWN = 0
uint8       ACCEPTED = 1
uint8       SAFETY_VIOLATION = 2
uint8       INSUFFICIENT_TIME = 3
uint8       PLAN_CONFLICT = 4
uint8       OTHERWISE_ENGAGED = 5
uint8       INSUFFICIENT_URGENCY = 6
uint8       PLAN_UNCLEAR = 7
uint8       OTHER = 8

