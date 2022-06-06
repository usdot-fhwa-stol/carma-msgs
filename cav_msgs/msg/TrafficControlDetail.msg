#
# TrafficControlDetail.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

#TrafficControlDetail ::= CHOICE
#{
#	signal OCTET STRING SIZE(0..63),
#	stop NULL,
#	yield NULL,
#	notowing NULL,
#	restricted NULL,
#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},
#	chains ENUMERATED {no, permitted, required},
#	direction ENUMERATED {forward, reverse},
#	lataffinity ENUMERATED {left, right},
#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},
#	parking ENUMERATED {no, parallel, angled},
#	minspeed DOUBLE (0..1023), -- m/s
#	maxspeed DOUBLE (0..1023), -- m/s
#	minhdwy DOUBLE (0..2047), -- meters
#	maxvehmass DOUBLE (0..65535), -- kg
#	maxvehheight DOUBLE (0..127), -- meters
#	maxvehwidth DOUBLE (0..127), -- meters
#	maxvehlength DOUBLE (0..1023), -- meters
#	maxvehaxles INTEGER (2..15), -- number of axles
#	minvehocc INTEGER (1..15), -- vehicle passenger count
#   maxplatoonsize INTEGER (1..63), -- vehicle count
#   minplatoonhdwy DOUBLE (0..2047), -- meters
#	...
#}


uint8 choice

# enumeration values for choice:

uint8 SIGNAL_CHOICE=0
uint8 STOP_CHOICE=1
uint8 YIELD_CHOICE=2
uint8 NOTOWING_CHOICE=3
uint8 RESTRICTED_CHOICE=4
uint8 CLOSED_CHOICE=5
uint8 CHAINS_CHOICE=6
uint8 DIRECTION_CHOICE=7
uint8 LATAFFINITY_CHOICE=8
uint8 LATPERM_CHOICE=9
uint8 PARKING_CHOICE=10
uint8 MINSPEED_CHOICE=11
uint8 MAXSPEED_CHOICE=12
uint8 MINHDWY_CHOICE=13
uint8 MAXVEHMASS_CHOICE=14
uint8 MAXVEHHEIGHT_CHOICE=15
uint8 MAXVEHWIDTH_CHOICE=16
uint8 MAXVEHLENGTH_CHOICE=17
uint8 MAXVEHAXLES_CHOICE=18
uint8 MINVEHOCC_CHOICE=19
uint8 MAXPLATOONSIZE_CHOICE=20
uint8 MINPLATOONHDWY_CHOICE=21

# signal ::= OCTET STRING SIZE(0..63)
uint8[] signal

#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}

uint8 closed

# enumeration values for closed:

uint8 OPEN=0

uint8 CLOSED=1

uint8 TAPERLEFT=2

uint8 TAPERRIGHT=3

uint8 OPENLEFT=4

uint8 OPENRIGHT=5

#chains ENUMERATED {no, permitted, required}

uint8 chains

# enumeration values for chains:

uint8 NO=0

uint8 PERMITTED=1

uint8 REQUIRED=2


#direction ENUMERATED {forward, reverse}

uint8 direction

# enumeration values for direction:

uint8 FORWARD=0

uint8 REVERSE=1

#lataffinity ENUMERATED {left, right}

uint8 lataffinity

# enumeration values for lataffinity:

uint8 LEFT=0

uint8 RIGHT=1

#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}

uint8[2] latperm

# enumeration values for latperm:

uint8 NONE=0

# uint8 PERMITTED=1 redeclaration

uint8 PASSINGONLY=2

uint8 EMERGENCYONLY=3

#parking ENUMERATED {no, parallel, angled}

uint8 parking

# enumeration values for parking:

# uint8 NO=0 redeclaration

uint8 PARALLEL=1

uint8 ANGLED=2

#minspeed ::= INTEGER (0..1023), -- m/s
float64 minspeed

#maxspeed ::= INTEGER (0..1023), -- m/s
float64 maxspeed

#minhdwy ::= INTEGER (0..2047), -- meters
float64 minhdwy

#maxvehmass ::= INTEGER (0..65535), -- kg
float64 maxvehmass

#maxvehheight ::= INTEGER (0..127), -- meters
float64 maxvehheight

#maxvehwidth ::= INTEGER (0..127), -- meters
float64 maxvehwidth

#maxvehlength ::= INTEGER (0..1023), -- meters
float64 maxvehlength

#maxvehaxles ::= INTEGER (2..15), -- number of axles
uint8 maxvehaxles

#minvehocc ::= INTEGER (1..15), -- vehicle passenger count
uint8 minvehocc

#maxplatoonsize ::= INTEGER (1..63), -- vehicle count
uint8 maxplatoonsize

#minplatoonhdwy ::= INTEGER (0..2047), -- meters
float64 minplatoonhdwy
