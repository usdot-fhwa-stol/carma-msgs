#
# VType.msg
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# ...

# VType ::= IMPLICIT ENUMERATED {
# 	pedestrian,
# 	bicycle,
# 	micromobile,
# 	motorcycle,
# 	passenger-car,
# 	light-truck-van,
# 	bus,
# 	two-axle-six-tire-single-unit-truck,
# 	three-axle-single-unit-truck,
# 	four-or-more-axle-single-unit-truck,
# 	four-or-fewer-axle-single-trailer-truck,
# 	five-axle-single-trailer-truck,
# 	six-or-more-axle-single-trailer-truck,
# 	five-or-fewer-axle-multi-trailer-truck,
# 	six-axle-multi-trailer-truck,
# 	seven-or-more-axle-multi-trailer-truck,
# 	rail,
# 	unclassified
# }

uint8 vehicle_type

# enumeration values for vehicle type:
uint8 PEDESTRIAN = 0
uint8 BICYCLE = 1
uint8 MICROMOBILE = 2
uint8 MOTORCYCLE = 3
uint8 PASSENGER_CAR = 4
uint8 LIGHT_TRUCK_VAN = 5
uint8 BUS = 6
uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 7
uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 8
uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 9
uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 10
uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 11
uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 12
uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 13
uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 14
uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 15
uint8 RAIL = 16
uint8 UNCLASSIFIED = 17