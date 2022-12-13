#
# CoefficientOfFriction.msg
#
# J2735 2016 message format.
#

# CoefficientOfFriction ::= INTEGER (0..50) 
#    -- where 0 = 0.00 micro (frictionless), also used when data is unavailable 
#    -- and  50 = 1.00 micro, in steps of 0.02
uint8 coefficient

uint8 COEFFICIENT_MIN=0
uint8 COEFFICIENT_MAX=50
uint8 COEFFICIENT_UNAVAILABLE=0