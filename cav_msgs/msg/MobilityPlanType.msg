# MobilityPlanType.msg
#
#

# Variable which can be used to store a specific plan type value.
uint8 type

# enumeration values for mobility plan type:

uint8       UNKNOWN=0 
uint8       CHANGINGLANESTOTHELEFT=1 
uint8       CHANGINGLANESTOTHERIGHT=2 
uint8       JOINPLATOONATREAR=3
uint8       PLATOONFOLLOWERJOIN=4
uint8       JOINPLATOONFROMFRONT=5
uint8       PLATOONFRONTJOIN=6
uint8       CUTINFROMSIDE=7
uint8       PLATOONCUTINJOIN=8
uint8       STOPCREATEGAP=9
uint8       CUTINFRONTDONE=10
uint8       CUTINMIDORREARDONE=11
uint8       PLATOONDEPARTURE=12
uint8       DELETEMEMBER=13
