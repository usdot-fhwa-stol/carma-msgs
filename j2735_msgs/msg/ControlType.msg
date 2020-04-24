#
# ControlType.msg
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Descriptions here
# ... 

# ControlType ::= [APPLICATION 8] IMPLICIT ENUMERATED {
# 	signal,
# 	stop,
# 	yield,
# 	closed,
# 	direction,
# 	lataffinity,
# 	maxspeed,
# 	minspeed,
# 	minhdwy,
# 	leftperm,
# 	rightperm,
# 	leftmrg,
# 	rightmrg,
# 	leftopnng,
# 	rightopnng,
# 	maxvehmass,
# 	maxvehheight,
# 	maxvehwidth,
# 	maxvehlength,
# 	maxaxles,
# 	regchains,
# 	restricted,
# 	noparking,
# 	vehicleocc,
# 	notowing
# }

uint8 control_type

# enumeration values for control_type:
uint8 SIGNAL = 0
uint8 STOP = 1
uint8 YIELD = 2
uint8 CLOSED = 3
uint8 DIRECTION = 4
uint8 LATAFFINITY = 5
uint8 MAXSPEED = 6
uint8 MINSPEED = 7
uint8 MINHDWY  = 8
uint8 LEFTPERM = 9
uint8 RIGHTPERM = 1
uint8 LEFTMRG = 11
uint8 RIGHTMRG = 12
uint8 LEFTOPNNG = 13
uint8 RIGHTOPNNG = 14
uint8 MAXVEHMASS = 15
uint8 MAXVEHHEIGHT = 16
uint8 MAXVEHWIDTH = 17
uint8 MAXVEHLENGTH = 18
uint8 MAXAXLES = 19
uint8 REGCHAINS = 20
uint8 RESTRICTED = 21
uint8 NOPARKING = 22
uint8 VEHICLEOCC = 23
uint8 NOTOWING = 24