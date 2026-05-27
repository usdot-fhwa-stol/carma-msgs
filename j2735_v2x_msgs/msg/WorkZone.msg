#
# WorkZone.msg
#
# J2735 2024 message format.
#

# WorkZone ::= SEQUENCE (SIZE(1..16)) OF SEQUENCE {
#    item CHOICE { itis ITIScodes, text ITIStextPhrase }
#    }

j2735_v2x_msgs/ContentSignItem[] items

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 16
