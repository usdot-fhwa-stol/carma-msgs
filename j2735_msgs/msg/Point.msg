#
# Point.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The positive x direction proceeds eastward, positive y proceeds
# northward, and positive z proceeds away from the center of the Earth. 

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
uint16 width