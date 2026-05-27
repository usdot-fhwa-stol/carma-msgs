#
# CCMPartIIcontent.msg
#
# J2735 2024 message format (J2945/6).
#

# PartII-Id ::= INTEGER (0..63)
#    vehicleSafetyExt   PartII-Id::= 0  -- VehicleSafetyExtensions
#    lightVehicleCCMExt PartII-Id::= 1  -- LightVehicleCCMExtensions
#    heavyTruckCCMExt   PartII-Id::= 2  -- HeavyTruckCCMExtensions

uint8 part_ii_id

uint8 VEHICLE_SAFETY_EXT = 0
uint8 LIGHT_VEHICLE_CCM_EXT = 1
uint8 HEAVY_TRUCK_CCM_EXT = 2

j2735_v2x_msgs/VehicleSafetyExtensions vehicle_safety_extensions

j2735_v2x_msgs/LightVehicleCCMExtensions light_vehicle_ccm_extensions

j2735_v2x_msgs/HeavyTruckCCMExtensions heavy_truck_ccm_extensions
