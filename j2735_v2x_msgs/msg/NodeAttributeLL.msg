#
# NodeAttributeLL.msg
#
# J2735 2024 message format.
#

# NodeAttributeLL ::= ENUMERATED {
#    reserved                (0),
#    stopLine                (1),
#    roundedCapStyleA        (2),
#    roundedCapStyleB        (3),
#    mergePoint              (4),
#    divergePoint            (5),
#    downstreamStopLine      (6),
#    downstreamStartNode     (7),
#    closedToTraffic         (8),
#    safeIsland              (9),
#    curbPresentAtStepOff    (10),
#    hydrantPresent          (11),
#    ...
#    }

uint8 RESERVED = 0
uint8 STOP_LINE = 1
uint8 ROUNDED_CAP_STYLE_A = 2
uint8 ROUNDED_CAP_STYLE_B = 3
uint8 MERGE_POINT = 4
uint8 DIVERGE_POINT = 5
uint8 DOWNSTREAM_STOP_LINE = 6
uint8 DOWNSTREAM_START_NODE = 7
uint8 CLOSED_TO_TRAFFIC = 8
uint8 SAFE_ISLAND = 9
uint8 CURB_PRESENT_AT_STEP_OFF = 10
uint8 HYDRANT_PRESENT = 11

uint8 node_attribute_ll
