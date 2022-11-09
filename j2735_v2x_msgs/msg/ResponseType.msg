#
# ResponseType.msg
#
# J2735 2016 message format.
#

#  ResponseType ::= ENUMERATED {
#  notInUseOrNotEquipped (0),
#  emergency (1), -- active service call at emergency level
#  nonEmergency (2), -- also used when returning from service call
#  pursuit (3), -- sender driving may be erratic
#  stationary (4), -- sender is not moving, stopped along roadside
#  slowMoving (5), -- such a mowers, litter trucks, etc.
#  stopAndGoMovement (6), -- such as school bus or garbage truck
#  ...
#  }

uint8  response_type

# enumeration values for response_type:
uint8 NOT_IN_USE_OR_NOT_EQUIPPED=0
uint8 EMERGENCY=1
uint8 NON_EMERGENCY=2
uint8 PURSUIT=3
uint8 STATIONARY=4
uint8 SLOW_MOVING=5
uint8 STOP_AND_GO_MOVEMENT=6