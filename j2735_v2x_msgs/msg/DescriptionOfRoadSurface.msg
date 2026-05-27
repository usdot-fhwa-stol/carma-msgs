#
# DescriptionOfRoadSurface.msg
#
# J2735 2024 message format.
#

# DescriptionOfRoadSurface ::= CHOICE {
#    portlandCement PortlandCement,
#    asphaltOrTar   AsphaltOrTar,
#    gravel         Gravel,
#    grass          Grass,
#    cinders        Cinders,
#    rock           Rock,
#    ice            Ice,
#    snow           Snow,
#    ...
#    }

uint8 choice

uint8 PORTLAND_CEMENT = 0
uint8 ASPHALT_OR_TAR = 1
uint8 GRAVEL = 2
uint8 GRASS = 3
uint8 CINDERS = 4
uint8 ROCK = 5
uint8 ICE = 6
uint8 SNOW = 7

j2735_v2x_msgs/PortlandCement portland_cement

j2735_v2x_msgs/AsphaltOrTar asphalt_or_tar

j2735_v2x_msgs/Gravel gravel

j2735_v2x_msgs/Grass grass

j2735_v2x_msgs/Cinders cinders

j2735_v2x_msgs/Rock rock

j2735_v2x_msgs/Ice ice

j2735_v2x_msgs/Snow snow
