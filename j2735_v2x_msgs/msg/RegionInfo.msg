#
# RegionInfo.msg
#
# J2735 2024 message format.
#

# RegionInfo ::= SEQUENCE {
#    referencePoint          Position3D,
#    locationUncertainty     RegionUncertainty      OPTIONAL,
#    referencePointType      ReferencePointType     OPTIONAL,
#    descriptiveName         DescriptiveName        OPTIONAL,
#    scale                   Zoom                   OPTIONAL,
#    approachRegion          AreaType               OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_LOCATION_UNCERTAINTY = 1
uint8 HAS_REFERENCE_POINT_TYPE = 2
uint8 HAS_DESCRIPTIVE_NAME = 4
uint8 HAS_SCALE = 8
uint8 HAS_APPROACH_REGION = 16

j2735_v2x_msgs/Position3D reference_point

j2735_v2x_msgs/RegionUncertainty location_uncertainty

j2735_v2x_msgs/ReferencePointType reference_point_type

j2735_v2x_msgs/DescriptiveName descriptive_name

j2735_v2x_msgs/Zoom scale

j2735_v2x_msgs/AreaType approach_region
