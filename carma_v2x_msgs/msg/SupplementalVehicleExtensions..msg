#
# SupplementalVehicleExtensions.msg
#
# J2735 2016 message format.
#
# @version 0.1
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

j2735_v2x_msgs/BasicVehicleClass classification
bool classification_exists

j2735_v2x_msgs/VehicleClassification class_details
bool class_details_exists

j2735_v2x_msgs/VehicleData vehicle_data
bool vehicle_data_exists

j2735_v2x_msgs/WeatherReport weather_report
bool weather_report_exists

j2735_v2x_msgs/WeatherProbe weather_probe
bool weather_probe_exists

j2735_v2x_msgs/ObstacleDetection obstacle
bool obstacle_exists

j2735_v2x_msgs/DisabledVehicle status 
bool status_available

j2735_v2x_msgs/GrossSpeed[] speed_profile
bool speed_profile_exists

j2735_v2x_msgs/RTCMPackage the_rtcm

# RegionalExtensions not yet used for SupplementalVehicleExtensions.msg