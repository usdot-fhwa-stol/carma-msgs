#
# PublicSafetyEventResponderWorkerType.msg
#
# J2735 2016 message format.
#
# Parsed description of PublicSafetyDirectingTrafficSubType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PublicSafetyEventResponderWorkerType ::= ENUMERATED { 
#    unavailable               (0),
#    towOperater               (1),
#    fireAndEMSWorker          (2),
#    aDOTWorker                (3),
#    lawEnforcement            (4),
#    hazmatResponder           (5), -- also any toxicSubstanceCleanupCrew
#    animalControlWorker       (6),
#    otherPersonnel            (7),
#    ...
#    }

uint8 type

uint8 UNAVAILABLE=0
uint8 TOW_OPERATOR=1
uint8 FIRE_EMS_WORKER=2
uint8 ADOT_WORKER=3
uint8 LAW_ENFORCEMENT=4
uint8 HAZMAT_RESPONDER=5
uint8 ANIMAL_CONTROL_WORKER=6
uint8 OTHER_PERSONNEL=7