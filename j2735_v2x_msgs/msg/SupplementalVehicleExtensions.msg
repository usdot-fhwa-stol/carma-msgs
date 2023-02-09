#
# SupplementalVehicleExtensions.msg
#
# J2735 2016 message format.
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
#    weatherReport    WeatherReport            OPTIONAL, 
#    weatherProbe     WeatherProbe             OPTIONAL, 
# 
#    -- Detected Obstacle data
#    obstacle         ObstacleDetection        OPTIONAL,
# 
#    -- Disabled Vehicle Report
#    status           DisabledVehicle          OPTIONAL,
#    
#    -- Oncoming lane speed reporting
#    speedProfile     SpeedProfile             OPTIONAL, 
# 
#    -- Raw GNSS measurements
#    theRTCM          RTCMPackage              OPTIONAL, 
# 
#    regional  SEQUENCE (SIZE(1..4)) OF 
#              RegionalExtension {{REGION.Reg-SupplementalVehicleExtensions}} OPTIONAL,
#    ...
# 
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
uint16 HAS_WEATHER_REPORT = 8
uint16 HAS_WEATHER_PROBE = 16
uint16 HAS_OBSTACLE = 32
uint16 HAS_STATUS = 64
uint16 HAS_SPEED_PROFILE = 128
uint16 HAS_THE_RTCM = 256

j2735_v2x_msgs/BasicVehicleClass classification

j2735_v2x_msgs/VehicleClassification class_details

j2735_v2x_msgs/VehicleData vehicle_data

j2735_v2x_msgs/WeatherReport weather_report

j2735_v2x_msgs/WeatherProbe weather_probe

j2735_v2x_msgs/ObstacleDetection obstacle

j2735_v2x_msgs/DisabledVehicle status 

j2735_v2x_msgs/GrossSpeed[] speed_profile

j2735_v2x_msgs/RTCMPackage the_rtcm

# regional #TODO: RegionalExtensions are not yet supported for this message type