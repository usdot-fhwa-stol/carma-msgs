#
# GeometricProjection.msg
#
# J2735 2024 message format.
#

# GeometricProjection ::= SEQUENCE {
#    direction        HeadingSlice,
#    extent           Extent OPTIONAL,
#    laneWidth        LaneWidth OPTIONAL,
#    circle           Circle,
#    regional         SEQUENCE (SIZE(1..4)) OF RegionalExtension OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_EXTENT = 1
uint8 HAS_LANE_WIDTH = 2
uint8 HAS_REGIONAL = 4

j2735_v2x_msgs/HeadingSlice direction

j2735_v2x_msgs/Extent extent

j2735_v2x_msgs/LaneWidth lane_width

j2735_v2x_msgs/Circle circle

j2735_v2x_msgs/RegionalExtension[] regional
