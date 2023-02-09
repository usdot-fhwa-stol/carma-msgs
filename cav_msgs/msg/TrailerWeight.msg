#
# TrailerWeight.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerWeight ::= INTEGER (0..64255)
# A data element re-used from the SAE J1939 standard and encoded as: 2 kg/bit, 0 degree offset, Range: 0 to
# +128510 kg. See SPN 180, PGN reference 65258.
# TrailerWeight in kg in range of [0..128510] kg
float64 trailer_weight

float64 TRAILER_WEIGHT_MAX = 128510