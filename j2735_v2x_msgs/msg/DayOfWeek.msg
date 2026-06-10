#
# DayOfWeek.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2024 message format.
#
# 
# @version 0.1
#
# Description
# ...

# DayOfWeek ::= ENUMERATED {
# 	unknown (0),
# 	monday (1),
# 	tuesday (2),
# 	wednesday (3),
# 	thursday (4),
# 	friday (5),
# 	saturday (6),
# 	sunday (7)
# }

uint8[7] dow

# Enumeration values
uint8 UNK = 0
uint8 MON = 1
uint8 TUE = 2
uint8 WED = 3
uint8 THU = 4
uint8 FRI = 5
uint8 SAT = 6
uint8 SUN = 7