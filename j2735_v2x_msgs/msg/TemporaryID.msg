#
# TemporaryID.msg
#
# J2735 2016 message format.
#
# Parsed description of TemporaryID from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# TemporaryID ::= OCTET STRING (SIZE(4))

uint8[] id

#TemporaryID will change every 3000 seconds.
uint16 ID_TIME_MAX = 3000