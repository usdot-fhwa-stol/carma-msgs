#
# CoefficientOfFriction.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# CoefficientOfFriction in micro in range [0..1.0]
float32 coefficient

float32 COEFFICIENT_MIN=0.0
float32 COEFFICIENT_MAX=1.0

# If true the coefficient of friction is unavailable
bool unavailable