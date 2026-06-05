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

# DayOfWeek ::= BIT STRING {
# 	unknown (0),
# 	monday (1),
# 	tuesday (2),
# 	wednesday (3),
# 	thursday (4),
# 	friday (5),
# 	saturday (6),
# 	sunday (7)
# } (SIZE(8))

uint8 dow

# Bit flags
uint8 UNKNOWN = 1
uint8 MONDAY = 2
uint8 TUESDAY = 4
uint8 WEDNESDAY = 8
uint8 THURSDAY = 16
uint8 FRIDAY = 32
uint8 SATURDAY = 64
uint8 SUNDAY = 128