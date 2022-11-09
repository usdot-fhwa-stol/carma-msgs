#
# OffsetB11.msg
#
# J2735 2016 message format.
#

# Offset-B11 ::= INTEGER (-1024..1023)
#    -- a range of +- 10.23 meters
# An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of reference,
# offset is positive to the east (X) and to the north (Y) directions. The most negative value shall be used to indicate an unknown value.
int16 offset

int16 OFFSET_UNKNOWN = -1024
int16 OFFSET_MIN = -1023
int16 OFFSET_MAX = 1023