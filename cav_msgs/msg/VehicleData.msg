#
# VehicleData.msg
#
# J2735 2024 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# VehicleData ::= SEQUENCE {
#    -- Values for width and length are sent in BSM part I
#    height        VehicleHeight   OPTIONAL,
#    bumpers       BumperHeights   OPTIONAL,
#    mass          VehicleMass     OPTIONAL,
#    -- doNotUse    TrailerWeight   OPTIONAL,  (deprecated in J2735 2024)
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
# HAS_TRAILER_WEIGHT = 8  -- removed (doNotUse in J2735 2024)

cav_msgs/VehicleHeight height

cav_msgs/BumperHeights bumpers

cav_msgs/VehicleMass mass