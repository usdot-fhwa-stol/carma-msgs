#
# TrailerHistoryPointList.msg
#
# J2735 2016 message format.
#

# TrailerHistoryPointList ::= SEQUENCE (SIZE(1..23)) OF TrailerHistoryPoint
j2735_v2x_msgs/TrailerHistoryPoint[] trailer_history_points

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 23