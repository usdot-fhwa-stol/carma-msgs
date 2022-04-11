#
# PropelledInformation.msg
#
# J2735 2016 message format.
#
# Parsed description of PropelledInformation from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PropelledInformation ::= CHOICE {
#    human   HumanPropelledType, -- PersonalDeviceUserType would be a aPEDESTRIAN
#    animal  AnimalPropelledType,
#    motor   MotorizedPropelledType,
#    ...
# }    

uint8 choice

uint8 CHOICE_HUMAN=0
uint8 CHOICE_ANIMAL=1
uint8 CHOICE_MOTOR=2

# Following fields selected by the choice enum
j2735_v2x_msgs/HumanPropelledType human
j2735_v2x_msgs/AnimalPropelledType animal
j2735_v2x_msgs/MotorizedPropelledType motor
