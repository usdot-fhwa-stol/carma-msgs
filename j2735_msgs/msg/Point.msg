#
# Point.msg
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# ...

# Point ::= IMPLICIT SEQUENCE {
# 	x INTEGER, -- units are cm for all of these
# 	y INTEGER,
# 	z INTEGER OPTIONAL,
# 	width INTEGER
# }

# X ::= INTEGER (−2147483648, 2147483647)
#   -- units are in cm
int32 x
int32 y
int32 z

bool z_exists

# Width ::= INTEGER (0, 4294967295)
#   -- units are in cm
uint32 width