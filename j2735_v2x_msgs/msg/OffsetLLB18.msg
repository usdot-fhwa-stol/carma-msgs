#
# OffsetLLB18.msg
#
# J2735 2016 message format.
#
# Parsed description of OffsetLL-B18 from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# OffsetLL-B18 ::= INTEGER (-131072..131071)     
#    -- A range of +- 0.0131071 degrees
#    -- The value +131071 shall be used for values >= than +0.0131071 degrees
#    -- The value -131071 shall be used for values <= than -0.0131071 degrees
#    -- The value -131072 shall be used unknown
#    -- In LSB units of 0.1 microdegrees (unless a zoom is employed)

int32 offset

int32 MIN=-131071
int32 MAX=131071

int32 UNAVAILABLE=-131072