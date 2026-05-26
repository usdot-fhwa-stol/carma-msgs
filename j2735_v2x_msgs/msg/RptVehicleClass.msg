#
# RptVehicleClass.msg
#
# J2735 2024 message format.
# Defined in J2945/C ProbeDataReport.
#

# RptVehicleClass ::= ENUMERATED {
#    motorcycles                         (1),
#    passengerCars                       (2),
#    other2axle4tireSingleUnitVehs       (3),
#    buses                               (4),
#    twoAxle6TireSingleUnitTrucks        (5),
#    threeAxleSingleUnitTrucks           (6),
#    fourOrMoreAxleSingleUnitTrucks      (7),
#    fourOrFewerAxleSingleTrailerTrucks  (8),
#    fiveAxleSingleTrailerTrucks         (9),
#    sixOrMoreAxleSingleTrailerTrucks    (10),
#    fiveOrFewerAxleMultiTrailerTrucks   (11),
#    sixAxleMultiTrailerTrucks           (12),
#    sevenOrMoreAxleMultiTrailerTrucks   (13),
#    ...
#    }

uint8 MOTORCYCLES = 1
uint8 PASSENGER_CARS = 2
uint8 OTHER_2AXLE_4TIRE_SINGLE_UNIT_VEHS = 3
uint8 BUSES = 4
uint8 TWO_AXLE_6TIRE_SINGLE_UNIT_TRUCKS = 5
uint8 THREE_AXLE_SINGLE_UNIT_TRUCKS = 6
uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCKS = 7
uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCKS = 8
uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCKS = 9
uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCKS = 10
uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCKS = 11
uint8 SIX_AXLE_MULTI_TRAILER_TRUCKS = 12
uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCKS = 13

uint8 rpt_vehicle_class
