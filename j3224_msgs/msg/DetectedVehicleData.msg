#
# DetectedVehicleData.msg
#
# J3224 2020 message format.
#

# DetectedVehicleData::= SEQUENCE {
#    lights ExteriorLights OPTIONAL,
#    vehAttitude Attitude OPTIONAL,
#    vehAttitudeConfidence AttitudeConfidence OPTIONAL,
#    vehAngVel AngularVelocity OPTIONAL,
#    vehAngVelConfidence AngularVelocityConfidence OPTIONAL,
#    size VehicleSize OPTIONAL,
#    height VehicleHeight OPTIONAL,
#    vehicleSizeConfidence VehicleSizeConfidence OPTIONAL,
#    vehicleClass BasicVehicleClass OPTIONAL,
#    classConf ClassificationConfidence OPTIONAL,
#    ...
# }  

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_LIGHTS) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_LIGHTS
uint16 presence_vector

uint16 HAS_LIGHTS = 1
uint16 HAS_VEH_ATTITUDE = 2
uint16 HAS_VEH_ATTITUDE_CONFIDENCE = 4
uint16 HAS_ANG_VEL = 8
uint16 HAS_ANG_VEL_CONFIDENCE = 16
uint16 HAS_SIZE = 32
uint16 HAS_HEIGHT = 64
uint16 HAS_VEHICLE_SIZE_CONFIDENCE = 128
uint16 HAS_VEHICLE_CLASS = 256
uint16 HAS_CLASS_CONF = 512

j2735_msgs/ExteriorLights lights

j3224_msgs/Attitude veh_attitude

j3224_msgs/AttitudeConfidence veh_attitude_confidence

j3224_msgs/AngularVelocity veh_ang_vel

j3224_msgs/AngularVelocityConfidence veh_ang_vel_confidence

j2735_msgs/VehicleSize size

j2735_msgs/VehicleHeight height

j3224_msgs/VehicleSizeConfidence vehicle_size_confidence

j2735_msgs/BasicVehicleClass vehicle_class

j3224_msgs/ClassificationConfidence class_conf