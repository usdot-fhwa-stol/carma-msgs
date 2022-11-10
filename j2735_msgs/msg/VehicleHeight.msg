#
# VehicleHeight.msg
#
# J2735 2016 message format.
#

# VehicleHeight ::= INTEGER (0..127) 
#     -- the height of the vehicle
#     -- LSB units of 5 cm, range to 6.35 meters
uint8 vehicle_height

uint8 VEHICLE_HEIGHT_UNAVAILABLE = 0
uint8 VEHICLE_HEIGHT_MAX = 127
uint8 VEHICLE_HEIGHT_MIN = 1