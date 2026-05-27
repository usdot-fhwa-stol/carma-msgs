#
# ContentSignItem.msg
#
# J2735 2024 message format.
#

# Inner SEQUENCE used by WorkZone, GenericSignage, SpeedLimit, ExitService:
# SEQUENCE {
#    item CHOICE {
#       itis   ITIScodes,
#       text   ITIStextPhrase
#       }
#    }

uint8 choice

uint8 ITIS = 0
uint8 TEXT = 1

j2735_v2x_msgs/ITIScodes itis

j2735_v2x_msgs/ITIStextPhrase text
