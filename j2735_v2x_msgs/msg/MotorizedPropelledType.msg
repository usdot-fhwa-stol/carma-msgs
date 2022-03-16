#
# MotorizedPropelledType.msg
#
# J2735 2016 message format.
#
# Parsed description of MotorizedPropelledType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# MotorizedPropelledType ::= ENUMERATED {   
#    unavailable         (0),
#    otherTypes          (1), -- any method not listed below
#    wheelChair          (2),
#    bicycle             (3),
#    scooter             (4),
#    selfBalancingDevice (5), -- such as Segway
#    ...
# }

uint8 type

uint8 UNAVAILABLE=0
uint8 OTHER_TYPES=1
uint8 WHEELCHAIR=2
uint8 BICYCLE=3
uint8 SCOOTER=4
uint8 SELF_BALANCING_DEVICE=5