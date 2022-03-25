# RepeatRequest.msg
#
# Helper message for MobilityResponse.msg to specify if a request can be repeated
#

# Variable which can be used to store a repeatability value.
uint8 repeat

# enumeration values for response reason:
uint8       UNKNOWN = 0
uint8       REQUEST_AGAIN = 1
uint8       NEVER_REQUEST_AGAIN = 2


