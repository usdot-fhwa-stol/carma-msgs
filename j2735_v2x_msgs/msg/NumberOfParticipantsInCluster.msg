#
# NumberOfParticipantsInCluster.msg
#
# J2735 2016 message format.
#
# Parsed description of NumberOfParticipantsInCluster from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# NumberOfParticipantsInCluster ::= ENUMERATED { 
#    unavailable  (0),
#    small        (1),   -- 2-5
#    medium       (2),   -- 6-10
#    large        (3),   -- >10
#    ...
#    }

uint8 cluster_size

uint8 UNAVAILABLE=0
uint8 SMALL=1
uint8 MEDIUM=2
uint8 LARGE=3