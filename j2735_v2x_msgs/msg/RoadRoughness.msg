#
# RoadRoughness.msg
#
# J2735 2024 message format.
#

# RoadRoughness ::= SEQUENCE {
#    meanVerticalVariation     MeanVariation,
#    verticalVariationStdDev   VariationStdDev   OPTIONAL,
#    meanHorizontalVariation   MeanVariation     OPTIONAL,
#    horizontalVariationStdDev VariationStdDev   OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_VERTICAL_VARIATION_STD_DEV = 1
uint8 HAS_MEAN_HORIZONTAL_VARIATION = 2
uint8 HAS_HORIZONTAL_VARIATION_STD_DEV = 4

j2735_v2x_msgs/MeanVariation mean_vertical_variation

j2735_v2x_msgs/VariationStdDev vertical_variation_std_dev

j2735_v2x_msgs/MeanVariation mean_horizontal_variation

j2735_v2x_msgs/VariationStdDev horizontal_variation_std_dev
