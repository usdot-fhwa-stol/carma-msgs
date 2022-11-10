#
# BasicVehicleClass.msg
#
# J2735 2016 message format.
#

# unknownVehicleClass             BasicVehicleClass ::=  0  
#                                 -- Not Equipped, Not known or unavailable
# specialVehicleClass             BasicVehicleClass ::=  1  
#                                 -- Special use    
# --
# --  Basic Passenger Motor Vehicle Types 
# -- 
# passenger-Vehicle-TypeUnknown   BasicVehicleClass ::=  10 -- default type
# passenger-Vehicle-TypeOther     BasicVehicleClass ::=  11 
# -- various fuel types are handled in another element
# --
# -- Light Trucks, Pickup, Van, Panel
# -- 
# lightTruck-Vehicle-TypeUnknown  BasicVehicleClass ::=  20 -- default type
# lightTruck-Vehicle-TypeOther    BasicVehicleClass ::=  21 
# --
# -- Trucks, Various axle types, includes HPMS items 
# -- 
# truck-Vehicle-TypeUnknown BasicVehicleClass ::=  25 -- default type
# truck-Vehicle-TypeOther BasicVehicleClass ::=  26 
# truck-axleCnt2  BasicVehicleClass ::=  27 -- Two axle, six tire single units    
# truck-axleCnt3  BasicVehicleClass ::=  28 -- Three axle, single units    
# truck-axleCnt4  BasicVehicleClass ::=  29 -- Four or more axle, single unit    
# truck-axleCnt4Trailer BasicVehicleClass ::=  30 -- Four or less axle, single trailer    
# truck-axleCnt5Trailer BasicVehicleClass ::=  31 -- Five or less axle, single trailer    
# truck-axleCnt6Trailer BasicVehicleClass ::=  32 -- Six or more axle, single trailer    
# truck-axleCnt5MultiTrailer BasicVehicleClass ::=  33 -- Five or less axle, multi-trailer    
# truck-axleCnt6MultiTrailer BasicVehicleClass ::=  34 -- Six axle, multi-trailer    
# truck-axleCnt7MultiTrailer BasicVehicleClass ::=  35 -- Seven or more axle, multi-trailer    
# --
# -- Motorcycle Types
# --
# motorcycle-TypeUnknown          BasicVehicleClass ::=  40 -- default type
# motorcycle-TypeOther            BasicVehicleClass ::=  41
# motorcycle-Cruiser-Standard     BasicVehicleClass ::=  42
# motorcycle-SportUnclad          BasicVehicleClass ::=  43
# motorcycle-SportTouring         BasicVehicleClass ::=  44
# motorcycle-SuperSport           BasicVehicleClass ::=  45
# motorcycle-Touring              BasicVehicleClass ::=  46
# motorcycle-Trike                BasicVehicleClass ::=  47 
# motorcycle-wPassengers          BasicVehicleClass ::=  48 -- type not stated
# --
# -- Transit Types
# --
# transit-TypeUnknown             BasicVehicleClass ::=  50 -- default type
# transit-TypeOther               BasicVehicleClass ::=  51
# transit-BRT                     BasicVehicleClass ::=  52
# transit-ExpressBus              BasicVehicleClass ::=  53
# transit-LocalBus                BasicVehicleClass ::=  54
# transit-SchoolBus               BasicVehicleClass ::=  55
# transit-FixedGuideway           BasicVehicleClass ::=  56
# transit-Paratransit             BasicVehicleClass ::=  57
# transit-Paratransit-Ambulance   BasicVehicleClass ::=  58
# --
# -- Emergency Vehicle Types
# --
# emergency-TypeUnknown            BasicVehicleClass ::=  60 -- default type
# emergency-TypeOther              BasicVehicleClass ::=  61 -- includes federal users
# emergency-Fire-Light-Vehicle     BasicVehicleClass ::=  62
# emergency-Fire-Heavy-Vehicle     BasicVehicleClass ::=  63
# emergency-Fire-Paramedic-Vehicle BasicVehicleClass ::=  64
# emergency-Fire-Ambulance-Vehicle BasicVehicleClass ::=  65
# emergency-Police-Light-Vehicle   BasicVehicleClass ::=  66
# emergency-Police-Heavy-Vehicle   BasicVehicleClass ::=  67
# emergency-Other-Responder        BasicVehicleClass ::=  68
# emergency-Other-Ambulance        BasicVehicleClass ::=  69
# --
# -- Other DSRC Equipped Travelers
# --
# otherTraveler-TypeUnknown          BasicVehicleClass ::=  80 -- default type
# otherTraveler-TypeOther            BasicVehicleClass ::=  81
# otherTraveler-Pedestrian           BasicVehicleClass ::=  82
# otherTraveler-Visually-Disabled    BasicVehicleClass ::=  83
# otherTraveler-Physically-Disabled  BasicVehicleClass ::=  84
# otherTraveler-Bicycle              BasicVehicleClass ::=  85
# otherTraveler-Vulnerable-Roadworker BasicVehicleClass ::=  86
# --
# -- Other DSRC Equipped Device Types
# --
# infrastructure-TypeUnknown      BasicVehicleClass ::=  90 -- default type
# infrastructure-Fixed            BasicVehicleClass ::=  91
# infrastructure-Movable          BasicVehicleClass ::=  92
# equipped-CargoTrailer           BasicVehicleClass ::=  93


# BasicVehicleClass ::= INTEGER (0..255)
uint8 basic_vehicle_class

# Enumeration values for basic_vehicle_class listed below

uint8 UNKNOWN_VEHICLE_CLASS=0
uint8 SPECIAL_VEHICLE_CLASS=1

uint8 PASSENGER_VEHICLE_TYPE_UNKNOWN=10
uint8 PASSENGER_VEHICLE_TYPE_OTHER=11

uint8 LIGHT_TRUCK_VEHICLE_TYPE_UNKNOWN=20
uint8 LIGHT_TRUCK_VEHICLE_TYPE_OTHER=21

uint8 TRUCK_VEHICLE_TYPE_UNKNOWN=25
uint8 TRUCK_VEHICLE_TYPE_OTHER=26
uint8 TRUCK_AXLE_COUNT_2=27
uint8 TRUCK_AXLE_COUNT_3=28
uint8 TRUCK_AXLE_COUNT_4=29
uint8 TRUCK_AXLE_COUNT_4_TRAILER=30
uint8 TRUCK_AXLE_COUNT_5_TRAILER=31
uint8 TRUCK_AXLE_COUNT_6_TRAILER=32
uint8 TRUCK_AXLE_COUNT_5_MULTI_TRAILER=33
uint8 TRUCK_AXLE_COUNT_6_MULTI_TRAILER=34
uint8 TRUCK_AXLE_COUNT_7_MULTI_TRAILER=35

uint8 MOTORCYCLE_TYPE_UNKNOWN=40
uint8 MOTORCYCLE_TYPE_OTHER=41
uint8 MOTORCYCLE_CRUISER_STANDARD=42
uint8 MOTORCYCLE_SPORT_UNCLAD=43
uint8 MOTORCYCLE_SPORT_TOURING=44
uint8 MOTORCYCLE_SUPORT_SPORT=45
uint8 MOTORCYCLE_TOURING=46
uint8 MOTORCYCLE_TRIKE=47
uint8 MOTORCYCLE_WITH_PASSENGERS=48

uint8 TRANSIT_TYPE_UNKNOWN=50
uint8 TRANSIT_TYPE_OTHER=51
uint8 TRANSIT_BRT=52
uint8 TRANSIT_EXPRESS_BUS=53
uint8 TRANSIT_LOCAL_BUS=54
uint8 TRANSIT_SCHOOL_BUS=55
uint8 TRANSIT_FIXED_GUIDEWAY=56
uint8 TRANSIT_PARATRANSIT=57
uint8 TRANSIT_PARATRANSIT_AMBULANCE=58

uint8 EMERGENCY_TYPE_UNKNOWN=60
uint8 EMERGENCY_TYPE_OTHER=61
uint8 EMERGENCY_FIRE_LIGHT_VEHICLE=62
uint8 EMERGENCY_FIRE_HEAVY_VEHICLE=63
uint8 EMERGENCY_FIRE_PARAMEDIC_VEHICLE=64
uint8 EMERGENCY_FIRE_AMBULANCE_VEHICLE=65
uint8 EMERGENCY_POLICE_LIGHT_VEHICLE=66
uint8 EMERGENCY_POLICE_HEAVY_VEHICLE=67
uint8 EMERGENCY_OTHER_RESPONDER=68
uint8 EMERGENCY_OTHER_AMBULANCE=69

uint8 OTHER_TRAVELER_TYPE_UNKNOWN=80
uint8 OTHER_TRAVELER_TYPE_OTHER=81
uint8 OTHER_TRAVELER_PEDESTRIAN=82
uint8 OTHER_TRAVELER_VISUALLY_DISABLED=83
uint8 OTHER_TRAVELER_PHYSICALLY_DISABLED=84
uint8 OTHER_TRAVELER_BICYCLE=85
uint8 OTHER_TRAVELER_VULNERABLE_ROADWORKER=86

uint8 INFRASTRUCTURE_TYPE_UNKNOWN=90
uint8 INFRASTRUCTURE_FIXED=91
uint8 INFRASTRUCTURE_MOVABLE=92
uint8 INFRASTRUCTURE_CARGO_TRAILER=93