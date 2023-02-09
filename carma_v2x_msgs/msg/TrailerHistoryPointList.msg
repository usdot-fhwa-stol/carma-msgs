#
# TrailerHistoryPointList.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerHistoryPointList ::= SEQUENCE (SIZE(1..23)) OF TrailerHistoryPoint
carma_v2x_msgs/TrailerHistoryPoint[] trailer_history_points

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 23