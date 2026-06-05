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

uint8 dow

# Enumeration values
uint8 UNKNOWN = 0
uint8 MONDAY = 1
uint8 TUESDAY = 2
uint8 WEDNESDAY = 3
uint8 THURSDAY = 4
uint8 FRIDAY = 5
uint8 SATURDAY = 6
uint8 SUNDAY = 7