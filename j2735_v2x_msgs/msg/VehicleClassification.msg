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

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_KEY_TYPE) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_KEY_TYPE
uint16 presence_vector

uint16 HAS_KEY_TYPE = 1
uint16 HAS_ROLE = 2
uint16 HAS_ISO = 4
uint16 HAS_HPMS_TYPE = 8
uint16 HAS_VEHICLE_TYPE = 16
uint16 HAS_RESPONSE_EQUIP = 32
uint16 HAS_RESPONDER_TYPE = 64
uint16 HAS_FUEL_TYPE = 128

j2735_v2x_msgs/BasicVehicleClass key_type

j2735_v2x_msgs/BasicVehicleRole role

# Iso3833VehicleType ::= INTEGER (0..100) 
# Refer to ISO3833 for valid values
uint8 iso3833
uint8 ISO3833_MIN=0
uint8 ISO3833_MAX=100

j2735_v2x_msgs/VehicleType hpms_type

j2735_v2x_msgs/ITISVehicleGroupAffected vehicle_type 

j2735_v2x_msgs/ITISIncidentResponseEquipment response_equip

j2735_v2x_msgs/ITISResponderGroupAffected responder_type

j2735_v2x_msgs/FuelType fuel_type

# regional #TODO: RegionalExtensions are not yet supported for this message type