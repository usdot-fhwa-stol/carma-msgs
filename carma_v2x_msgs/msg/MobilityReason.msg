# MobilityReason.msg
#
#

# Variable which can be used to store a specific reason value.
uint8 choice

# enumeration values for mobility reason:

uint8       UNKNOWN=0 
uint8       ACCEPTED=1 
uint8       SAFETYVIOLATION=2 
uint8       INSUFFICIENTTIME=3
uint8       PLANCONFLICT=4
uint8       OTHERWISEENGAGED=5
uint8       INSUFFICIENTURGENCY=6
uint8       PLANUNCLEAR=7
uint8       OTHER=8