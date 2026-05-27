#
# MsgCRC.msg
#
# J2735 2024 message format.
#

# MsgCRC ::= OCTET STRING (SIZE(2))
#    -- created with the CRC-CCITT polynomial

uint8[2] msg_crc
