#
# OffsetB10.msg
#
# J2735 2016 message format.
#

# Offset-B10 ::= INTEGER (-512..511)
#    -- a range of +- 5.11 meters
# An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of reference,
# offset is positive to the east (X) and to the north (Y) directions. The most negative value shall be used to indicate an unknown
# value.
int16 offset

int16 OFFSET_MIN=-511
int16 OFFSET_MAX=511
int16 OFFSET_UNKNOWN=-512