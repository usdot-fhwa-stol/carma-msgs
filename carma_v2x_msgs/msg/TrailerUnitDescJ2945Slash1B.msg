#
# TrailerUnitDescJ2945Slash1B.msg
#
# Modified J2735 2024 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerUnitDescJ2945Slash1B ::= SEQUENCE {
#    width       VehicleWidth,
#    length      VehicleLength,
#    height      VehicleHeight           OPTIONAL,
#    weight      TrailerWeight           OPTIONAL,
#    frontPivot  PivotPointDescription,
#    rearPivot   PivotPointDescription   OPTIONAL,
#    bumpers     BumperHeights           OPTIONAL,
#    axles       Axles                   OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_HEIGHT = 1
uint8 HAS_WEIGHT = 2
uint8 HAS_REAR_PIVOT = 4
uint8 HAS_BUMPERS = 8
uint8 HAS_AXLES = 16

carma_v2x_msgs/VehicleWidth width

carma_v2x_msgs/VehicleLength length

carma_v2x_msgs/VehicleHeight height

carma_v2x_msgs/TrailerWeight weight

carma_v2x_msgs/PivotPointDescription front_pivot

carma_v2x_msgs/PivotPointDescription rear_pivot

carma_v2x_msgs/BumperHeights bumpers

carma_v2x_msgs/Axles axles
