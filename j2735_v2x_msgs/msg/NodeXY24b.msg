#
# NodeXY24b.msg
#
# J2735 2016 message format.
#
# A 24-bit node type with offset values from the last point in X and Y.
#
# Node-XY-24b ::= SEQUENCE {
# x Offset-B12,
# y Offset-B12
# }


# Offset-B12 ::= INTEGER (-2048..2047)
# -- a range of +- 20.47 meters
# A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)
# directions. The most negative value shall be used to indicate an unknown value.

int16 x
int16 y

int16 UNKNOWN=-2048
int16 MIN=-2047
int16 MAX=2047