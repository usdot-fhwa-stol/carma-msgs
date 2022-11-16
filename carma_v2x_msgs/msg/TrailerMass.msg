#
# TrailerMass.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerMass in kg in range of (0..127500)
float64 trailer_mass

float64 TRAILER_MASS_MAX = 127500

# If true the trailer mass is unavailable
bool unavailable