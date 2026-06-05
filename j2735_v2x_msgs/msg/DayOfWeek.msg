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

# DayOfWeek ::= BIT STRING //only J
# {
# 	sun (6), 
# 	mon (5), 
# 	tue (4), 
# 	wed (3), 
# 	thu (2), 
# 	fri (1), 
# 	sat (0)
# }

uint8 dow

# Bit flags
uint8 SAT = 1
uint8 FRI = 2
uint8 THU = 4
uint8 WED = 8
uint8 TUE = 16
uint8 MON = 32
uint8 SUN = 64