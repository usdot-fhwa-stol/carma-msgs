#
# ITIScodesAndTextItem.msg
#
# J2735 2024 message format.
#

# Inner SEQUENCE of ITIScodesAndText:
# SEQUENCE {
#    item CHOICE {
#       itis ITIScodes,
#       text ITIStext
#       }
#    }

uint8 choice

uint8 ITIS = 0
uint8 TEXT = 1

j2735_v2x_msgs/ITIScodes itis

j2735_v2x_msgs/ITIStext text
