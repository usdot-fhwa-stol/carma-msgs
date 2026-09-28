#
# Axles.msg
#
# J2735 2024 message format.
#

# Axles ::= SEQUENCE {
#    totalAxles  INTEGER (1..10, ...),
#    frontAxles  INTEGER (0..10, ...)    OPTIONAL,
#    rearAxles   INTEGER (0..10, ...)    OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_FRONT_AXLES = 1
uint8 HAS_REAR_AXLES = 2

uint8 total_axles
uint8 front_axles
uint8 rear_axles
