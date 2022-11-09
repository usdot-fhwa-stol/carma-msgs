#
# BSMPartIIExtension.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.

# -- BSM Part II content support
# PARTII-EXT-ID-AND-TYPE ::= CLASS {
#   &id     PartII-Id UNIQUE,
#   &Type
#   } WITH SYNTAX {&Type IDENTIFIED BY &id}
#
# PartIIcontent  { PARTII-EXT-ID-AND-TYPE: Set} ::= SEQUENCE {
#   partII-Id     PARTII-EXT-ID-AND-TYPE.&id( {Set} ),
#   partII-Value  PARTII-EXT-ID-AND-TYPE.&Type( {Set}{@partII-Id} )
#   }
#
# PartII-Id ::= INTEGER (0..63)
#   vehicleSafetyExt       PartII-Id::= 0  -- VehicleSafetyExtensions
#   specialVehicleExt      PartII-Id::= 1  -- SpecialVehicleExtensions
#   supplementalVehicleExt PartII-Id::= 2  -- SupplementalVehicleExtensions
#   -- NOTE: new registered Part II content IDs will be denoted here
#
# -- In a given message there may be multiple extensions present 
# -- but at most one instance of each extension type.
# BSMpartIIExtension  PARTII-EXT-ID-AND-TYPE ::= { 
#   { VehicleSafetyExtensions       IDENTIFIED BY vehicleSafetyExt} |
#   { SpecialVehicleExtensions      IDENTIFIED BY specialVehicleExt} |
#   { SupplementalVehicleExtensions IDENTIFIED BY supplementalVehicleExt} ,
#   ... 
#   }  

uint8 part_ii_id

# Enumeration values for part_ii_id
uint8 VEHICLE_SAFETY_EXT = 0
uint8 SPECIAL_VEHICLE_EXT = 1
uint8 SUPPLEMENTAL_VEHICLE_EXT = 2

carma_v2x_msgs/VehicleSafetyExtensions vehicle_safety_extensions

carma_v2x_msgs/SpecialVehicleExtensions special_vehicle_extensions

carma_v2x_msgs/SupplementalVehicleExtensions supplemental_vehicle_extensions

