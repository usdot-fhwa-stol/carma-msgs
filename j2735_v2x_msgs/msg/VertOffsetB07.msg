#
# VertOffsetB07.msg
#
# J2735 2016 message format.
#

# VertOffset-B07 ::= INTEGER (-64..63)  
#    -- LSB units of of 10 cm
#    -- with a range of +- 6.3 meters vertical 
#    -- value  63 to be used for  63 or greater
#    -- value -63 to be used for -63 or greater
#    -- value -64 to be unavailable
int8 offset 

int8 OFFSET_MIN = -63
int8 OFFSET_MAX = 63
int8 OFFSET_UNAVAILABLE = -64