#
# UserSizeAndBehaviour.msg
#
# J2735 2016 message format.
#
# Parsed description of PublicSafetyDirectingTrafficSubType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# UserSizeAndBehaviour ::= BIT STRING { 
#    unavailable                     (0),
#    smallStature                    (1), -- less than 150 cm high
#    largeStature                    (2),
#    erraticMoving                   (3), 
#    slowMoving                      (4)  -- those who move a bit slowly
#    } (SIZE (5, ...))

# A BIT STRING defining the presence of optional flags.
# Compare with bitwise-and
# if (sizes_and_behaviors & SMALL_STATURE) etc.
# Create with bitwise-or
# sizes_and_behaviors = activities | SMALL_STATURE
uint8 sizes_and_behaviors

uint8 UNAVAILABLE = 0
uint8 SMALL_STATURE = 1
uint8 LARGE_STATURE = 2
uint8 ERRATIC_MOVING = 4
uint8 SLOW_MOVING = 8