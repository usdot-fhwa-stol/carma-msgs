#
# RSMLanePosition.msg
#
# J2735 2024 message format.
#

# RSMLanePosition ::= INTEGER (1..32)
# Lane position where lane 1 is always leftmost lane

uint8 rsm_lane_position

uint8 MIN = 1
uint8 MAX = 32
