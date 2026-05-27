#
# NtcipPavement.msg
#
# carma_v2x_msgs: SI-converted version.
#

# surface_temp converted from tenths of °C to float32 °C
# moisture_depth converted from tenths of mm to float32 mm

uint8 presence_vector

uint8 HAS_SURFACE_TEMP = 1
uint8 HAS_TEMP_STD_DEV = 2
uint8 HAS_CONDITION = 4
uint8 HAS_MOISTURE_DEPTH = 8
uint8 HAS_ROAD_ROUGHNESS = 16

float32 surface_temp

j2735_v2x_msgs/SurfaceTempMeasurementStdDev temp_std_dev

j2735_v2x_msgs/NTCIPPavementSensorSurfaceCondition condition

float32 moisture_depth

j2735_v2x_msgs/RoadRoughness road_roughness
