#
# ElevOffset.msg
#
# J2735 2024 message format.
#

# ElevOffset ::= INTEGER (-4096..4095)
# Offset in increments of 0.1 meters (scale not applied)

int16 elev_offset

int16 MIN = -4096
int16 MAX = 4095
