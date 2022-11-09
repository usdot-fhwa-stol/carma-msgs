#
# OffsetB09.msg
#
# J2735 2016 message format.
#

# Offset-B09 ::= INTEGER (-256..255)
#   -- a range of +- 2.55 meters
# A 9-bit delta offset in X, Y, or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the east (X) and to the north (Y) directions. The most negative value shall be used to indicate
# an unknown value.
int16 offset

int16 OFFSET_MIN=-255
int16 OFFSET_MAX=255
int16 OFFSET_UNKNOWN=-256