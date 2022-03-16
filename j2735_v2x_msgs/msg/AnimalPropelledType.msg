#
# AnimalPropelledType.msg
#
# J2735 2016 message format.
#
# Parsed description of AnimalPropelledType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# AnimalPropelledType ::= ENUMERATED {   
#    unavailable         (0),
#    otherTypes          (1), -- any method not listed below
#    animalMounted       (2), -- as in horseback          
#    animalDrawnCarriage (3),
#    ...
# }

uint8 type

uint8 UNAVAILABLE=0
uint8 OTHER_TYPES=1
uint8 ANIMAL_MOUNTED=2
uint8 ANIMAL_DRAWN_CARRIAGE=3