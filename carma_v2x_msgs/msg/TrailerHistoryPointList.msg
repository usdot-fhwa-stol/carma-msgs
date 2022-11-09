#
# TrailerHistoryPointList.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerHistoryPointList ::= SEQUENCE (SIZE(1..23)) OF TrailerHistoryPoint
carma_v2x_msgs/TrailerHistoryPoint[] trailer_history_points

uint8 SIZE_MIN = 1
uint8 SIZE_MAX = 23