#
# HeadingDeg.msg
#
# J2735 2024 message format.
#

# HeadingDeg ::= INTEGER (0..359)
# Heading in 1 degree increments, 0 = North, incrementing to the East

uint16 heading_deg

uint16 MIN = 0
uint16 MAX = 359
