#
# VehicleLength.msg
#
# J2735 2016 message format.
#

# VehicleLength ::= INTEGER (0.. 4095) 
#     -- LSB units of 1 cm with a range of >40 meters
uint16 vehicle_length

uint16 VEHICLE_LENGTH_UNAVAILABLE = 0
uint16 VEHICLE_LENGTH_MAX = 4095
uint16 VEHICLE_LENGTH_MIN = 1
