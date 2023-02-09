#
# OffsetB12.msg
#
# J2735 2016 message format.
#

# Offset-B12 ::= INTEGER (-2048..2047)
#    -- a range of +- 20.47 meters
# A 12-bit delta offset in X, Y, or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, non-vehicle centric coordinate frames of reference, offset is positive to the east (X) and to the north (Y) directions.
# The most negative value shall be used to indicate an unknown value
int16 offset

int16 OFFSET_MIN=-2047
int16 OFFSET_MAX=2047
int16 OFFSET_UNKNOWN=-2048