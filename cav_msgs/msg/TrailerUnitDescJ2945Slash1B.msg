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

cav_msgs/VehicleWidth width

cav_msgs/VehicleLength length

cav_msgs/VehicleHeight height

cav_msgs/TrailerWeight weight

cav_msgs/PivotPointDescription front_pivot

cav_msgs/PivotPointDescription rear_pivot

cav_msgs/BumperHeights bumpers

j2735_v2x_msgs/Axles axles