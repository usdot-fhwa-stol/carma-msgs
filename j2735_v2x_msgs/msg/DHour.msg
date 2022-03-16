#
# DHour.msg
#
# J2735 2016 message format.
#
# Parsed description of DHour from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# DHour ::= INTEGER (0..31) -- units of hours
# Hour of day is 0-23, 31 denotes unvailable and 24-30 are reserved for transit schedule adherence
uint8 hour

uint8 HOUR_OF_DAY_MIN=0
uint8 HOUR_OF_DAY_MAX=31
uint8 TRANSITE_SCHEDULE_ADHERENCE_START=24
uint8 TRANSITE_SCHEDULE_ADHERENCE_END=30
uint8 UNAVAILABLE=31