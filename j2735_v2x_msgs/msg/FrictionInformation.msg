#
# FrictionInformation.msg
#
# J2735 2024 message format.
#

# FrictionInformation ::= SEQUENCE {
#    roadSurfaceDescription      DescriptionOfRoadSurface,
#    dryOrWet                    RoadSurfaceCondition    OPTIONAL,
#    roadRoughness               RoadRoughness           OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_DRY_OR_WET = 1
uint8 HAS_ROAD_ROUGHNESS = 2

j2735_v2x_msgs/DescriptionOfRoadSurface road_surface_description

j2735_v2x_msgs/RoadSurfaceCondition dry_or_wet

j2735_v2x_msgs/RoadRoughness road_roughness
