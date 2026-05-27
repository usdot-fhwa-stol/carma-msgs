#
# RegionUncertainty.msg
#
# J2735 2024 message format.
#

# RegionUncertainty ::= CHOICE {
#    alongPath            Offset3D,
#    inCoordinateFrame    Offset3D,
#    ...
#    }

uint8 choice

uint8 ALONG_PATH = 0
uint8 IN_COORDINATE_FRAME = 1

j2735_v2x_msgs/Offset3D along_path

j2735_v2x_msgs/Offset3D in_coordinate_frame
