#
# BankAngle.msg
#
# J2735 2024 message format.
#

# BankAngle ::= INTEGER (-512..512)
# Tenths of degrees

int16 bank_angle

int16 MIN = -512
int16 MAX = 512
