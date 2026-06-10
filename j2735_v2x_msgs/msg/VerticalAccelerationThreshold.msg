#
# VerticalAccelerationThreshold.msg
#
# J2735 2024 message format.
#

# VerticalAccelerationThreshold ::= BIT STRING {
#    notEquipped (0), -- Not equipped or off
#    leftFront   (1), -- Left Front Event
#    leftRear    (2), -- Left Rear Event
#    rightFront  (3), -- Right Front Event
#    rightRear   (4)  -- Right Rear Event
#    } (SIZE(5))
# A bit string enumerating when a preset threshold for vertical acceleration is exceeded at each wheel
uint8 exceeded_wheels

uint8 NOT_EQUIPPED=1
uint8 LEFT_FRONT=2
uint8 LEFT_REAR=4
uint8 RIGHT_FRONT=8
uint8 RIGHT_REAR=16