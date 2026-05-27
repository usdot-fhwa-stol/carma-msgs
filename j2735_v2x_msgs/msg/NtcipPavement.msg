#
# NtcipPavement.msg
#
# J2735 2024 message format.
#

# NtcipPavement ::= SEQUENCE {
#    surfaceTemp          NTCIPEssSurfaceTemperature             OPTIONAL,
#    tempStdDev           SurfaceTempMeasurementStdDev           OPTIONAL,
#    condition            NTCIPPavementSensorSurfaceCondition    OPTIONAL,
#    moistureDepth        NTCIPEssSurfaceIceOrWaterDepth         OPTIONAL,
#    roadRoughness        RoadRoughness                          OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_SURFACE_TEMP = 1
uint8 HAS_TEMP_STD_DEV = 2
uint8 HAS_CONDITION = 4
uint8 HAS_MOISTURE_DEPTH = 8
uint8 HAS_ROAD_ROUGHNESS = 16

j2735_v2x_msgs/NTCIPEssSurfaceTemperature surface_temp

j2735_v2x_msgs/SurfaceTempMeasurementStdDev temp_std_dev

j2735_v2x_msgs/NTCIPPavementSensorSurfaceCondition condition

j2735_v2x_msgs/NTCIPEssSurfaceIceOrWaterDepth moisture_depth

j2735_v2x_msgs/RoadRoughness road_roughness
