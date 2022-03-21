#
# PathHistoryPointList.msg
#
# J2735 2016 message format.
#
# Parsed description of PathHistoryPointList from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PathHistoryPointList ::= SEQUENCE (SIZE(1..23)) OF PathHistoryPoint

j2735_v2x_msgs/PathHistoryPoint[] points

uint8 MIN_SIZE=1
uint8 MAX_SIZE=23