#
# SupplementalVehicleExtensions.msg
#
# J2735 2024 message format.
#

# SupplementalVehicleExtensions ::= SEQUENCE {
#    -- Note that VehicleEventFlags, ExteriorLights, 
#    -- PathHistory, and PathPrediction are in VehicleSafetyExtensions 
# 
#    -- Vehicle Type Classification Data
#    classification   BasicVehicleClass        OPTIONAL,
#                     -- May be required to be present for non passenger vehicles
#    classDetails     VehicleClassification    OPTIONAL,
#    vehicleData      VehicleData              OPTIONAL,
# 
#    -- Various V2V Probe Data
#    doNotUse1       	WeatherReport           OPTIONAL, 
#    --Do not use
#    doNotUse2       	WeatherProbe            OPTIONAL, 
#    --Do not use
# 
#    -- Detected Obstacle data
#    doNotUse3       	ObstacleDetection       OPTIONAL, 
#    --Do not use
# 
#    -- Disabled Vehicle Report
#    status           DisabledVehicle          OPTIONAL,
# 
#    -- Oncoming lane speed reporting
#    doNotUse4       	SpeedProfile            OPTIONAL, 
#    --Do not use
# 
#    -- Raw GNSS measurements
#    doNotUse5       	RTCMPackage             OPTIONAL, 
#    --Do not use
# 
#    regional  SEQUENCE (SIZE(1..4)) OF 
#              RegionalExtension {{Reg-SupplementalVehicleExtensions}} OPTIONAL,
#    ...,
#    fhwaVehicleClass  RptVehicleClass,
#    -- Use FHWA vehicle classes, defined in J2945/C ProbeDataReport
# 
#    trailers         TrailersJ2945Slash1B     OPTIONAL,   
#    -- Used in J2945/1B
# 
#    schoolBus      	SchoolBusJ2945Slash1C	 OPTIONAL
#    -- Used in J2945/1C
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_CLASSIFICATION) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_CLASSIFICATION
uint16 presence_vector

uint16 HAS_CLASSIFICATION = 1
uint16 HAS_CLASS_DETAILS = 2
uint16 HAS_VEHICLE_DATA = 4
# HAS_WEATHER_REPORT = 8     -- removed (doNotUse1 in J2735 2024)
# HAS_WEATHER_PROBE = 16     -- removed (doNotUse2 in J2735 2024)
# HAS_OBSTACLE = 32          -- removed (doNotUse3 in J2735 2024)
uint16 HAS_STATUS = 64
# HAS_SPEED_PROFILE = 128    -- removed (doNotUse4 in J2735 2024)
# HAS_THE_RTCM = 256         -- removed (doNotUse5 in J2735 2024)

uint16 HAS_TRAILERS = 512
uint16 HAS_SCHOOL_BUS = 1024

j2735_v2x_msgs/BasicVehicleClass classification

j2735_v2x_msgs/VehicleClassification class_details

j2735_v2x_msgs/VehicleData vehicle_data

j2735_v2x_msgs/DisabledVehicle status

# regional #TODO: RegionalExtensions are not yet supported for this message type

j2735_v2x_msgs/RptVehicleClass fhwa_vehicle_class

j2735_v2x_msgs/TrailersJ2945Slash1B trailers

j2735_v2x_msgs/SchoolBusJ2945Slash1C school_bus