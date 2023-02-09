#
# ObstacleDistance.msg
#
# J2735 2016 message format.
#

# ObstacleDistance ::= INTEGER (0..32767) -- LSB units of meters
uint16 distance

uint16 DISTANCE_MIN = 0
uint16 DISTANCE_MAX = 32767