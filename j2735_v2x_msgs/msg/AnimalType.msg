#
# AnimalType.msg
#
# J2735 2016 message format.
#
# Parsed description of AnimalType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# AnimalType ::= ENUMERATED { 
#    unavailable    (0), 
#    serviceUse     (1),  -- Includes guide or police animals
#    pet            (2),
#    farm           (3),
#    ...
#    }

uint8 type

uint8 UNAVAILABLE=0
uint8 SERVICE_USE=1
uint8 PET=2
uint8 FARM=3