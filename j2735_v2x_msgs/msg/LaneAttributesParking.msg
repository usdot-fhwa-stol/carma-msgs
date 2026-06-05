#
# LaneAttributesParking.msg
#
# J2735 2024 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.
#
# LaneAttributes-Parking ::= BIT STRING {
# -- With bits as defined:
# -- Parking use details, note that detailed restrictions such as
# -- allowed hours are sent by way of ITIS codes in the TIM message
# parkingRevocableLane(0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# parallelParkingInUse(1),
# headInParkingInUse(2),
# doNotParkZone(3),
# -- used to denote fire hydrants as well as
# -- short disruptions in a parking zone
# parkingForBusUse(4),
# parkingForTaxiUse(5),
# noPublicParkingUse(6)
# -- private parking, as in front of
# -- private property
# -- Bits 7~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_parking

# Bit flags
uint16 PARKING_REVOCABLE_LANE=1
uint16 PARALLEL_PARKING_IN_USE=2
uint16 HEAD_IN_PARKING_IN_USE=4
uint16 DO_NOT_PARK_ZONE=8
uint16 PARKING_FOR_BUS_USE=16
uint16 PARKING_FOR_TAXI_USE=32
uint16 NO_PUBLIC_PARKING_USE=64