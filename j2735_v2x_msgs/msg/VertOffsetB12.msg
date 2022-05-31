#
# VertOffsetB12.msg
#
# J2735 2016 message format.
#
# Parsed description of VertOffset-B12 from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# VertOffset-B12 ::= INTEGER (-2048..2047)  
#    -- LSB units of of 10 cm
#    -- with a range of +- 204.7 meters vertical
#    -- value  2047 to be used for  2047 or greater
#    -- value -2047 to be used for -2047 or greater
#    -- value -2048 to be unavailable

int16 offset

int16 MIN=-2047
int16 MAX=2047
int16 UNAVAILABLE=-2048