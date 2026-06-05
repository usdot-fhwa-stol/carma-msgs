#
# LaneSharing.msg
#
# J2735 2024 message format.
#
# @author Mae Fromm
# @version 0.1
#
#
# LaneSharing ::= BIT STRING {
# -- With bits as defined:
# overlappingLaneDescriptionProvided (0),
# -- Assert when another lane object is present to describe the
# -- path of the overlapping shared lane
# -- this construct is not used for lane objects which simply cross
# multipleLanesTreatedAsOneLane(1),
# -- Assert if the lane object path and width details represents
# -- multiple lanes within it that are not further described
# -- Various modes and type of traffic that may share this lane:
# otherNonMotorizedTrafficTypes (2), -- horse drawn etc.
# individualMotorizedVehicleTraffic (3),
# busVehicleTraffic (4),
# taxiVehicleTraffic (5),
# pedestriansTraffic (6),
# cyclistVehicleTraffic (7),
# trackedVehicleTraffic (8),
# reserved (9)          -- was pedestrianTraffic in J2735 2024; renamed in J2735 2024
# } (SIZE (10))
# -- All zeros would indicate 'not shared' and 'not overlapping'

uint16 lane_sharing

# Bit flags
uint16 OVERLAPPING_LANE_DESCRIPTION_PROVIDED=1
uint16 MULTIPLE_LANES_TREATED_AS_ONE_LANE=2
uint16 OTHER_NON_MOTORIZED_TRAFFIC_TYPES=4
uint16 INDIVIDUAL_MOTORIZED_VEHICLE_TRAFFIC=8
uint16 BUS_VEHICLE_TRAFFIC=16
uint16 TAXI_VEHICLE_TRAFFIC=32
uint16 PEDESTRIANS_TRAFFIC=64
uint16 CYCLIST_VEHICLE_TRAFFIC=128
uint16 TRACKED_VEHICLE_TRAFFIC=256
uint16 RESERVED=512