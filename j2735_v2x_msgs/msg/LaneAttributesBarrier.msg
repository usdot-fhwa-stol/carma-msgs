#
# LaneAttributesBarrier.msg
#
# J2735 2024 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Barrier data element relates specific properties found in a Barrier
# or Median lane type (a type of lane object used to separate traffic lanes).
#
# LaneAttributes-Barrier ::= BIT STRING {
# -- With bits as defined:
# median-RevocableLane (0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# median (1),
# whiteLineHashing (2),
# stripedLines (3),
# doubleStripedLines (4),
# trafficCones (5),
# constructionBarrier(6),
# trafficChannels(7),
# lowCurbs(8),
# highCurbs(9)
# -- Bits 10~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_barrier

# Bit flags
uint16 MEDIAN_REVOCABLE_LANE=1
uint16 MEDIAN=2
uint16 WHITE_LINE_HASHING=4
uint16 STRIPED_LINES=8
uint16 DOUBLE_STRIPED_LINES=16
uint16 TRAFFIC_CONES=32
uint16 CONSTRUCTION_BARRIER=64
uint16 TRAFFIC_CHANNELS=128
uint16 LOW_CURBS=256
uint16 HIGH_CURBS=512