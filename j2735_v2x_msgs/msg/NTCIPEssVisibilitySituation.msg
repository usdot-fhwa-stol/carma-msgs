#
# NTCIPEssVisibilitySituation.msg
#
# J2735 2024 message format.
#

# NTCIPEssVisibilitySituation ::= ENUMERATED {
#    other (1),
#    unknown (2),
#    clear (3),
#    fogNotPatchy (4),
#    patchyFog (5),
#    blowingSnow (6),
#    smoke (7),
#    seaSpray (8),
#    vehicleSpray (9),
#    blowingDustOrSand (10),
#    sunGlare (11),
#    swarmsOfInsects (12),
#    ...
#    }

uint8 OTHER = 1
uint8 UNKNOWN = 2
uint8 CLEAR = 3
uint8 FOG_NOT_PATCHY = 4
uint8 PATCHY_FOG = 5
uint8 BLOWING_SNOW = 6
uint8 SMOKE = 7
uint8 SEA_SPRAY = 8
uint8 VEHICLE_SPRAY = 9
uint8 BLOWING_DUST_OR_SAND = 10
uint8 SUN_GLARE = 11
uint8 SWARMS_OF_INSECTS = 12

uint8 visibility_situation
