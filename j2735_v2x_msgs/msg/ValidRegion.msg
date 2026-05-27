#
# ValidRegion.msg
#
# J2735 2024 message format.
#

# ValidRegion ::= SEQUENCE {
#    direction         HeadingSlice,
#    extent            Extent OPTIONAL,
#    area    CHOICE  {
#       shapePointSet  ShapePointSet,
#       circle         Circle,
#       regionPointSet RegionPointSet
#       }
#    }

uint8 presence_vector

uint8 HAS_EXTENT = 1

j2735_v2x_msgs/HeadingSlice direction

j2735_v2x_msgs/Extent extent

uint8 area_choice

uint8 SHAPE_POINT_SET = 0
uint8 CIRCLE = 1
uint8 REGION_POINT_SET = 2

j2735_v2x_msgs/ShapePointSet shape_point_set

j2735_v2x_msgs/Circle circle

j2735_v2x_msgs/RegionPointSet region_point_set
