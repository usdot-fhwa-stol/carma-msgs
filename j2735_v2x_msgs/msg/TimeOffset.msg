#
# TimeOffset.msg
#
# J2735 2016 message format.
#
# Parsed description of TimeOffset from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# TimeOffset ::= INTEGER (1..65535)
#    -- LSB units of of 10 mSec, 
#    -- with a range of 0.01 seconds to 10 minutes and 55.34 seconds
#    -- a value of 65534 to be used for 655.34 seconds or greater
#    -- a value of 65535 to be unavailable

uint16 offset

uint16 MIN=1
uint16 MAX=65534

uint16 UNAVAILABLE=65535