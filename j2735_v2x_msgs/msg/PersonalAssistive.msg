#
# PersonalAssistive.msg
#
# J2735 2016 message format.
#
# Parsed description of PersonalAssistive from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PersonalAssistive::= BIT STRING {
#    unavailable    (0),
#    otherType      (1),
#    vision         (2),
#    hearing        (3),
#    movement       (4),
#    cognition      (5)
#    } (SIZE (6, ...))

# A BIT STRING defining the presence of optional flags.
# Compare with bitwise-and
# if (types & OTHER_TYPE) etc.
# Create with bitwise-or
# types = types | OTHER_TYPE
uint8 types

uint8 UNAVAILABLE = 0
uint8 OTHER_TYPE = 1
uint8 VISION = 2
uint8 HEARING = 4
uint8 MOVEMENT = 8
uint8 COGNITION = 16