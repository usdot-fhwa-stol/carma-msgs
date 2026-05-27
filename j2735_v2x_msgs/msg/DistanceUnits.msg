#
# DistanceUnits.msg
#
# J2735 2024 message format.
#

# DistanceUnits ::= ENUMERATED {
#    centimeter  (0),
#    cm2-5       (1),
#    decimeter   (2),
#    meter       (3),
#    kilometer   (4),
#    foot        (5),
#    yard        (6),
#    mile        (7)
#    }

uint8 CENTIMETER = 0
uint8 CM2_5 = 1
uint8 DECIMETER = 2
uint8 METER = 3
uint8 KILOMETER = 4
uint8 FOOT = 5
uint8 YARD = 6
uint8 MILE = 7

uint8 distance_units
