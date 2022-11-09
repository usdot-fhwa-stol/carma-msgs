#
# MultiVehicleResponse.msg
#
# J2735 2016 message format.
#

# MultiVehicleResponse ::= ENUMERATED {
#      unavailable   (0), -- Not Equipped or unavailable
#      singleVehicle (1),  
#      multiVehicle  (2),  
#      reserved      (3)  -- for future use
#      }

uint8  multi_vehicle_response

# enumeration values for multi_vehicle_response:
uint8  UNAVAILABLE=0
uint8  SINGLE_VEHICLE=1
uint8  MULTI_VEHICLE=2
uint8  RESERVED=3