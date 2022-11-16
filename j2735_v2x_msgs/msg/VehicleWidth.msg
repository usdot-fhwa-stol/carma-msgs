#
# VehicleWidth.msg
#
# J2735 2016 message format.
#

# VehicleWidth ::= INTEGER (0..1023) 
#    -- LSB units are 1 cm with a range of >10 meters
#    -- The value zero shall be sent when data is unavailable. 
uint16 vehicle_width

uint16 VEHICLE_WIDTH_UNAVAILABLE = 0
uint16 VEHICLE_WIDTH_MAX = 1023
uint16 VEHICLE_WIDTH_MIN = 1

