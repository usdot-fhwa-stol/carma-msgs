std_msgs/Header header

std_msgs/String test_msg

# Have messages for each of the topics for each of the mock drivers from the rosbag file

# camera

# sensor_msgs/CameraInfo camera_info_1
# sensor_msgs/Image image_raw_1
sensor_msgs/CameraInfo camera_info
sensor_msgs/Image image_raw

sensor_msgs/Image image_rects
autoware_msgs/ProjectionMatrix projection_matrix

# can

std_msgs/Bool acc_engaged
std_msgs/Float64 acceleration
std_msgs/Bool antilock_brakes_active
std_msgs/Bool brake_lights
std_msgs/Float64 brake_position
std_msgs/Float64 engine_speed
std_msgs/Float64 fuel_flow
std_msgs/Float64 odometer
std_msgs/Bool parking_brake
std_msgs/Float64 speed
std_msgs/Bool stability_ctrl_active
std_msgs/Bool stability_ctrl_enabled
std_msgs/Float64 steering_wheel_angle
std_msgs/Float64 throttle_position
std_msgs/Bool traction_ctrl_active
std_msgs/Bool traction_ctrl_enabled
j2735_msgs/TransmissionState transmission_state
cav_msgs/TurnSignal turn_signal_state
geometry_msgs/TwistStamped vehicle_twist
autoware_msgs/VehicleStatus vehicle_status
automotive_platform_msgs/VelocityAccel velocity_accel

# comms

cav_msgs/ByteArray inbound_binary_msg

# controller

cav_msgs/RobotEnabled robot_status

# gnss

gps_common/GPSFix gnss_fixed_fused

# imu

sensor_msgs/Imu raw_data

# lidar

sensor_msgs/PointCloud2 points_raw

# radar

radar_msgs/RadarStatus status
radar_msgs/RadarTrackArray tracks_raw

# roadway_sensor

derived_object_msgs/ObjectWithCovariance detected_objects
derived_object_msgs/LaneModels lane_models

# data
tf2_msgs/TFMessage tf
tf2_msgs/TFMessage tf_static