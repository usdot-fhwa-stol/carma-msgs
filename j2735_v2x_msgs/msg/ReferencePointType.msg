#
# ReferencePointType.msg
#
# J2735 2024 message format.
#

# ReferencePointType ::= ENUMERATED {
#    startOfEvent (0),
#    arbitrary    (1),
#    ...
#    }

uint8 reference_point_type

uint8 START_OF_EVENT = 0
uint8 ARBITRARY = 1
