#
# VehicleData.msg
#
# J2735 2016 message format.
#

# VehicleData ::= SEQUENCE {    
#    -- Values for width and length are sent in BSM part I 
#    height        VehicleHeight   OPTIONAL,
#    bumpers       BumperHeights   OPTIONAL,
#    mass          VehicleMass     OPTIONAL,
#    trailerWeight TrailerWeight   OPTIONAL,
#    ...
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_PATH_HISTORY) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_PATH_HISTORY
uint16 presence_vector

uint16 HAS_HEIGHT = 1
uint16 HAS_BUMPERS = 2
uint16 HAS_MASS = 4
uint16 HAS_TRAILER_WEIGHT = 8


j2735_v2x_msgs/VehicleHeight height

j2735_v2x_msgs/BumperHeights bumpers

j2735_v2x_msgs/VehicleMass mass

j2735_v2x_msgs/TrailerWeight trailer_weight