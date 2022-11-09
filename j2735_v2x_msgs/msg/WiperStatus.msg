#
# WiperStatus.msg
#
# J2735 2016 message format.
#

# WiperStatus ::= ENUMERATED {
#      unavailable         (0), -- Not Equipped with wiper status
#                               -- or wiper status is unavailable
#      off                 (1),  
#      intermittent        (2), 
#      low                 (3),
#      high                (4),
#      washerInUse         (5), -- washing solution being used
#      automaticPresent    (6), -- Auto wiper equipped
#      ...  
#      }
uint8 wiper_status

# Enumeration values for wiper_status
uint8 UNAVAILABLE=0
uint8 OFF=1
uint8 INTERMITTENT=2
uint8 LOW=3
uint8 HIGH=4
uint8 WASHER_IN_USE=5
uint8 AUTOMATIC_PRESENT=6