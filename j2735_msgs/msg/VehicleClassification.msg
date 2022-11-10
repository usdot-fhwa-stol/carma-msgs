#
# VehicleClassification.msg
#
# J2735 2016 message format.
#

# VehicleClassification ::= SEQUENCE {
#    -- Composed of the following elements:

#    -- The 'master' DSRC list used when space is limited
#    keyType         BasicVehicleClass OPTIONAL,

#    -- Types used in the MAP/SPAT/SSR/SRM exchanges 
#    role            BasicVehicleRole OPTIONAL, -- Basic CERT role at a given time
#    iso3883         Iso3833VehicleType OPTIONAL,
#    hpmsType        VehicleType OPTIONAL,  -- HPMS classification types
   
#    -- ITIS types for classes of vehicle and agency
#    vehicleType     ITIS.VehicleGroupAffected OPTIONAL,      
#    responseEquip   ITIS.IncidentResponseEquipment OPTIONAL, 
#    responderType   ITIS.ResponderGroupAffected OPTIONAL,    

#    -- Fuel types for vehicles
#    fuelType        FuelType OPTIONAL,      

#    regional        SEQUENCE (SIZE(1..4)) OF 
#                    RegionalExtension {{REGION.Reg-VehicleClassification}} OPTIONAL,
#    ...
#    }

j2735_msgs/BasicVehicleClass key_type
bool key_type_exists

j2735_msgs/BasicVehicleRole role
bool role_exists

# Iso3833VehicleType ::= INTEGER (0..100) 
# Refer to ISO3833 for valid values
uint8 iso3833
bool iso3883_exists

j2735_msgs/ITISVehicleGroupAffected vehicle_type 
bool vehicle_type_exists 

j2735_msgs/ITISIncidentResponseEquipment response_equip
bool response_equip_exists

j2735_msgs/ITISResponderGroupAffected responder_type
bool response_type_exists

j2735_msgs/FuelType fuel_type
bool fuel_type_exists

# regional #TODO: RegionalExtensions are not yet supported for this message type