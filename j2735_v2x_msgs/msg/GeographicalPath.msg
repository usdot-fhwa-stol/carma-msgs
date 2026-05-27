#
# GeographicalPath.msg
#
# J2735 2024 message format.
#

# GeographicalPath ::= SEQUENCE {
#    name             DescriptiveName          OPTIONAL,
#    id               RoadSegmentReferenceID   OPTIONAL,
#    anchor           Position3D               OPTIONAL,
#    laneWidth        LaneWidth                OPTIONAL,
#    directionality   DirectionOfUse           OPTIONAL,
#    closedPath       BOOLEAN                  OPTIONAL,
#    direction        HeadingSlice             OPTIONAL,
#    description CHOICE {
#       path         OffsetSystem,
#       geometry     GeometricProjection,
#       oldRegion    ValidRegion,
#       ...
#       } OPTIONAL,
#    regional   SEQUENCE (SIZE(1..4)) OF RegionalExtension OPTIONAL,
#    ...
#    }

uint16 presence_vector

uint16 HAS_NAME = 1
uint16 HAS_ID = 2
uint16 HAS_ANCHOR = 4
uint16 HAS_LANE_WIDTH = 8
uint16 HAS_DIRECTIONALITY = 16
uint16 HAS_CLOSED_PATH = 32
uint16 HAS_DIRECTION = 64
uint16 HAS_DESCRIPTION = 128
uint16 HAS_REGIONAL = 256

j2735_v2x_msgs/DescriptiveName name

j2735_v2x_msgs/RoadSegmentReferenceID id

j2735_v2x_msgs/Position3D anchor

j2735_v2x_msgs/LaneWidth lane_width

j2735_v2x_msgs/DirectionOfUse directionality

bool closed_path

j2735_v2x_msgs/HeadingSlice direction

uint8 description_choice

uint8 PATH = 0
uint8 GEOMETRY = 1
uint8 OLD_REGION = 2

j2735_v2x_msgs/OffsetSystem path

j2735_v2x_msgs/GeometricProjection geometry

j2735_v2x_msgs/ValidRegion old_region

j2735_v2x_msgs/RegionalExtension[] regional
