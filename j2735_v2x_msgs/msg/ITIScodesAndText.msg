#
# ITIScodesAndText.msg
#
# J2735 2024 message format.
#

# ITIScodesAndText ::= SEQUENCE (SIZE(1..100)) OF SEQUENCE {
#    item CHOICE { itis ITIScodes, text ITIStext }
#    }

j2735_v2x_msgs/ITIScodesAndTextItem[] items

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 100
