#
# TrailerMass.msg
#
# J2735 2016 message format.
#

# TrailerMass ::= INTEGER (0..255) 
#    -- object mass with LSB steps of 500 kg (~1100 lbs)
#    -- the value zero shall be used for an unknown mass value
#    -- the value 255 shall be used any mass larger than 127,500kg
#    -- a useful range of 0~127.5 metric tons. 
uint8 trailer_mass

uint8 TRAILER_MASS_UNKNOWN=0
uint8 TRAILER_MASS_MAX=255
uint8 TRAILER_MASS_MIN=1