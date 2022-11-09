#
# TrailerWeight.msg
#
# J2735 2016 message format.
#

# TrailerWeight ::= INTEGER (0..64255)
# A data element re-used from the SAE J1939 standard and encoded as: 2 kg/bit, 0 degree offset, Range: 0 to
# +128510 kg. See SPN 180, PGN reference 65258.
uint16 trailer_weight

uint16 TRAILER_WEIGHT_MAX=64255