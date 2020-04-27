#
# ControlValue.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# ...

# ControlValue ::= EXPLICIT CHOICE {
# 	value INTEGER,
# 	direction ENUMERATED {forward, reverse},
# 	lataffinity ENUMERATED {left, right},
# 	perm ENUMERATED {none, permitted, passing_only, emergency_only},
# 	prkingallowd ENUMERATED {no, parallel, angled}
# }

# Value ::= INTEGER
int32 value

# Direction := ENUMERATED
# -- 0=forward, 1=reverse
uint8 direction
uint8 FORWARD = 0
uint8 REVERSE = 1

# Lataffinity := ENUMERATED
# -- 0=left, 1=right
uint8 lataffinity
uint8 LEFT = 0
uint8 RIGHT = 1

# Permission := ENUMERATED
# -- {0=none, 1= permitted, 2=passing_only, 3=emergency_only}
uint8 perm
uint8 NONE = 0
uint8 PERMITTED = 1
uint8 PASSING_ONLY = 2
uint8 EMERGENCY_ONLY = 3

# ParkingAllowed := ENUMERATED
# -- {0= no, 1= parallel, 2= angled}
uint8 prkingallowd
uint8 NO = 0
uint8 PARALLEL = 1
uint8 ANGLED = 2
