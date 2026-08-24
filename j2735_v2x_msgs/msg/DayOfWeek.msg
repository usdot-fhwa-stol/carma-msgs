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
# DayOfWeek is not in 2024 J2735 standard, but is part of the
# TrafficControlMessage specification.
# It is used to represent the days of the week in a BIT STRING format.
# It differs from the Japanese J2735 standard, which uses ENUMERATION.

# DayOfWeek ::= BIT STRING
# {
# 	sun (6),
# 	mon (5),
# 	tue (4),
# 	wed (3),
# 	thu (2),
# 	fri (1),
# 	sat (0)
# }

uint8[7] dow

# enumeration values for day of week
uint8 SUN = 6
uint8 MON = 5
uint8 TUE = 4
uint8 WED = 3
uint8 THU = 2
uint8 FRI = 1
uint8 SAT = 0
