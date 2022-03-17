#
# PersonalDeviceUserType.msg
#
# J2735 2016 message format.
#
# Parsed description of PersonalDeviceUserType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#

# PersonalDeviceUserType ::= ENUMERATED { 
#    unavailable           (0),
#    aPEDESTRIAN           (1), -- Further details may be provided elsewhere
#    aPEDALCYCLIST         (2), -- Presumed to be human propelled, 
#                               -- unless PropelledInformation indicates motorized
#    aPUBLICSAFETYWORKER   (3),
#    anANIMAL              (4),
#    ...
#    }

uint8 type

uint8 UNAVAILABLE=0
uint8 A_PEDESTRIAN=1
uint8 A_PEDALCYCLIST=2
uint8 A_PUBLIC_SAFETY_WORKER=3
uint8 AN_ANIMAL=4