#
# SegmentAttributeLL.msg
#
# J2735 2024 message format.
#

# SegmentAttributeLL ::= ENUMERATED {
#    reserved                   (0),
#    doNotBlock                 (1),
#    whiteLine                  (2),
#    mergingLaneLeft            (3),
#    mergingLaneRight           (4),
#    curbOnLeft                 (5),
#    curbOnRight                (6),
#    loadingzoneOnLeft          (7),
#    loadingzoneOnRight         (8),
#    turnOutPointOnLeft         (9),
#    turnOutPointOnRight        (10),
#    adjacentParkingOnLeft      (11),
#    adjacentParkingOnRight     (12),
#    adjacentBikeLaneOnLeft     (13),
#    adjacentBikeLaneOnRight    (14),
#    sharedBikeLane             (15),
#    bikeBoxInFront             (16),
#    transitStopOnLeft          (17),
#    transitStopOnRight         (18),
#    transitStopInLane          (19),
#    sharedWithTrackedVehicle   (20),
#    safeIsland                 (21),
#    lowCurbsPresent            (22),
#    rumbleStripPresent         (23),
#    audibleSignalingPresent    (24),
#    adaptiveTimingPresent      (25),
#    rfSignalRequestPresent     (26),
#    partialCurbIntrusion       (27),
#    taperToLeft                (28),
#    taperToRight               (29),
#    taperToCenterLine          (30),
#    parallelParking            (31),
#    headInParking              (32),
#    freeParking                (33),
#    timeRestrictionsOnParking  (34),
#    costToPark                 (35),
#    midBlockCurbPresent        (36),
#    unEvenPavementPresent      (37),
#    ...
#    }

uint8 RESERVED = 0
uint8 DO_NOT_BLOCK = 1
uint8 WHITE_LINE = 2
uint8 MERGING_LANE_LEFT = 3
uint8 MERGING_LANE_RIGHT = 4
uint8 CURB_ON_LEFT = 5
uint8 CURB_ON_RIGHT = 6
uint8 LOADINGZONE_ON_LEFT = 7
uint8 LOADINGZONE_ON_RIGHT = 8
uint8 TURN_OUT_POINT_ON_LEFT = 9
uint8 TURN_OUT_POINT_ON_RIGHT = 10
uint8 ADJACENT_PARKING_ON_LEFT = 11
uint8 ADJACENT_PARKING_ON_RIGHT = 12
uint8 ADJACENT_BIKE_LANE_ON_LEFT = 13
uint8 ADJACENT_BIKE_LANE_ON_RIGHT = 14
uint8 SHARED_BIKE_LANE = 15
uint8 BIKE_BOX_IN_FRONT = 16
uint8 TRANSIT_STOP_ON_LEFT = 17
uint8 TRANSIT_STOP_ON_RIGHT = 18
uint8 TRANSIT_STOP_IN_LANE = 19
uint8 SHARED_WITH_TRACKED_VEHICLE = 20
uint8 SAFE_ISLAND = 21
uint8 LOW_CURBS_PRESENT = 22
uint8 RUMBLE_STRIP_PRESENT = 23
uint8 AUDIBLE_SIGNALING_PRESENT = 24
uint8 ADAPTIVE_TIMING_PRESENT = 25
uint8 RF_SIGNAL_REQUEST_PRESENT = 26
uint8 PARTIAL_CURB_INTRUSION = 27
uint8 TAPER_TO_LEFT = 28
uint8 TAPER_TO_RIGHT = 29
uint8 TAPER_TO_CENTER_LINE = 30
uint8 PARALLEL_PARKING = 31
uint8 HEAD_IN_PARKING = 32
uint8 FREE_PARKING = 33
uint8 TIME_RESTRICTIONS_ON_PARKING = 34
uint8 COST_TO_PARK = 35
uint8 MID_BLOCK_CURB_PRESENT = 36
uint8 UN_EVEN_PAVEMENT_PRESENT = 37

uint8 segment_attribute_ll
