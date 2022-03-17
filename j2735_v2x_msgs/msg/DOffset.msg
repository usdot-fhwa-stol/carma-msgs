#
# DOffset.msg
#
# J2735 2016 message format.
#
# Parsed description of DOffset from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# DOffset ::= INTEGER (-840..840) -- units of minutes from UTC time

int16 offset_minute

int16 MIN=-840
int16 MAX=840
int16 UNAVAILABLE=0