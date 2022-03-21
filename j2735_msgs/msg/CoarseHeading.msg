#
# CoarseHeading.msg
#
# J2735 2016 message format.
#
# Parsed description of CoarseHeading from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# CoarseHeading ::= INTEGER (0..240)
#    -- Where the LSB is in units of 1.5 degrees 
#    -- over a range of 0~358.5 degrees
#    -- the value 240 shall be used for unavailable

uint8 heading

uint8 MIN=0
uint8 MAX=239

uint8 UNAVAILABLE=240