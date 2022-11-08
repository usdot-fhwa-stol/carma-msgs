#
# VehicleData.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# VehicleData ::= SEQUENCE {    
#    -- Values for width and length are sent in BSM part I 
#    height        VehicleHeight   OPTIONAL,
#    bumpers       BumperHeights   OPTIONAL,
#    mass          VehicleMass     OPTIONAL,
#    trailerWeight TrailerWeight   OPTIONAL,
#    ...
#    }

j2735_v2x_msgs/VehicleHeight height
bool height_exists

j2735_v2x_msgs/BumperHeights bumpers
bool bumpers_exists

j2735_v2x_msgs/VehicleMass mass
bool mass_exists

j2735_v2x_msgs/TrailerWeight trailer_weight
bool trailer_weight_exists