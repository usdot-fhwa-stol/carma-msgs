#
# ZoneLength.msg
#
# J2735 2024 message format.
#

# ZoneLength ::= INTEGER (0..10000)
# Unit = 1 meter, 0 = unknown,
# The value 10000 to be used for Distances >=10000 m

uint16 zone_length

uint16 UNKNOWN = 0
uint16 MAX = 10000
