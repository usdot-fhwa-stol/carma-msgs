#
# NTCIPEssPaveTreatProductType.msg
#
# J2735 2024 message format.
#

# NTCIPEssPaveTreatProductType ::= ENUMERATED {
#    other (1),
#    sand (2),
#    dirt (3),
#    gravel (4),
#    cinders (5),
#    water (6),
#    enhancedSalts (7),
#    naCl (8),
#    caCl (9),
#    mgCl (10),
#    cMA (11),
#    kAC (12),
#    naFormate (13),
#    naA (14),
#    ...
#    }

uint8 OTHER = 1
uint8 SAND = 2
uint8 DIRT = 3
uint8 GRAVEL = 4
uint8 CINDERS = 5
uint8 WATER = 6
uint8 ENHANCED_SALTS = 7
uint8 NA_CL = 8
uint8 CA_CL = 9
uint8 MG_CL = 10
uint8 CMA = 11
uint8 KAC = 12
uint8 NA_FORMATE = 13
uint8 NA_A = 14

uint8 product_type
