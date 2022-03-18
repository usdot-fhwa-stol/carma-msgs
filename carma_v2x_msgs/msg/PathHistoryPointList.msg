#
# PathHistoryPointList.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PathHistoryPointList from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# PathHistoryPointList ::= SEQUENCE (SIZE(1..23)) OF PathHistoryPoint

carma_v2x_msgs/PathHistoryPoint[] points

uint8 MIN_SIZE=1
uint8 MAX_SIZE=23