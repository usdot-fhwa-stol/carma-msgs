#
# BumperHeight.msg
#
# J2735 2016 message format.
#

# BumperHeight ::= INTEGER (0..127) 
#    -- in units of 0.01 meters from ground surface.
uint8 bumper_height

uint8 BUMPER_HEIGHT_MIN=0
uint8 BUMPER_HEIGHT_MAX=127
