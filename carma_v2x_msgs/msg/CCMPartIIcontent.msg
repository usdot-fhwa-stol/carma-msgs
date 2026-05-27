#
# CCMPartIIcontent.msg
#
# Modified J2735 2024 message format (J2945/6), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 part_ii_id

uint8 VEHICLE_SAFETY_EXT = 0
uint8 LIGHT_VEHICLE_CCM_EXT = 1
uint8 HEAVY_TRUCK_CCM_EXT = 2

carma_v2x_msgs/VehicleSafetyExtensions vehicle_safety_extensions

carma_v2x_msgs/LightVehicleCCMExtensions light_vehicle_ccm_extensions

carma_v2x_msgs/HeavyTruckCCMExtensions heavy_truck_ccm_extensions
