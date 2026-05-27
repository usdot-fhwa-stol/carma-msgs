#
# LaneOffset.msg
#
# J2735 2024 message format (J3186).
#

# LaneOffset ::= ENUMERATED {
#    currentLane     (0),
#    firstLeftLane   (1),
#    firstRightLane  (2),
#    secondLeftLane  (3),
#    secondRightLane (4),
#    thirdLeftLane   (5),
#    thirdRightLane  (6),
#    ...
#    }

uint8 CURRENT_LANE = 0
uint8 FIRST_LEFT_LANE = 1
uint8 FIRST_RIGHT_LANE = 2
uint8 SECOND_LEFT_LANE = 3
uint8 SECOND_RIGHT_LANE = 4
uint8 THIRD_LEFT_LANE = 5
uint8 THIRD_RIGHT_LANE = 6

uint8 lane_offset
