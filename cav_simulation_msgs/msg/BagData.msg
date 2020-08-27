std_msgs/Header header

# Have messages for each of the topics for each of the mock drivers from the rosbag file

# camera

sensor_msgs/CameraInfo camera_info
bool camera_info_flag
sensor_msgs/Image image_raw
bool image_raw_flag
sensor_msgs/Image image_rects
bool image_rects_flag
autoware_msgs/ProjectionMatrix projection_matrix
bool projection_matrix_flag

# can

std_msgs/Bool acc_engaged
bool acc_engaged_flag
std_msgs/Float64 acceleration
bool acceleration_flag
std_msgs/Bool antilock_brakes_active
bool antilock_brakes_active_flag
std_msgs/Bool brake_lights
bool brake_lights_flag
std_msgs/Float64 brake_position
bool brake_position_flag
std_msgs/Float64 engine_speed
bool engine_speed_flag
std_msgs/Float64 fuel_flow
bool fuel_flow_flag
std_msgs/Float64 odometer
bool odometer_flag
std_msgs/Bool parking_brake
bool parking_brake_flag
std_msgs/Float64 speed
bool speed_flag
std_msgs/Bool stability_ctrl_active
bool stability_ctrl_active_flag
std_msgs/Bool stability_ctrl_enabled
bool stability_ctrl_enabled_flag
std_msgs/Float64 steering_wheel_angle
bool steering_wheel_angle_flag
std_msgs/Float64 throttle_position
bool throttle_position_flag
std_msgs/Bool traction_ctrl_active
bool traction_ctrl_active_flag
std_msgs/Bool traction_ctrl_enabled
bool traction_ctrl_enabled_flag
j2735_msgs/TransmissionState transmission_state
bool transmission_state_flag
cav_msgs/TurnSignal turn_signal_state
bool turn_signal_state_flag
geometry_msgs/TwistStamped vehicle_twist
bool vehicle_twist_flag
autoware_msgs/VehicleStatus vehicle_status
bool vehicle_status_flag
automotive_platform_msgs/VelocityAccel velocity_accel
bool velocity_accel_flag

# comms

cav_msgs/ByteArray inbound_binary_msg
bool inbound_binary_msg_flag

# controller

cav_msgs/RobotEnabled robot_status
bool robot_status_flag

# gnss

gps_common/GPSFix gnss_fixed_fused
bool gnss_fixed_fused_flag

# imu

sensor_msgs/Imu raw_data
bool raw_data_flag

# lidar

sensor_msgs/PointCloud2 points_raw
bool points_raw_flag

# radar

radar_msgs/RadarStatus status
bool status_flag
radar_msgs/RadarTrackArray tracks_raw
bool tracks_raw_flag

# roadway_sensor

derived_object_msgs/ObjectWithCovariance detected_objects
bool detected_objects_flag
derived_object_msgs/LaneModels lane_models
bool lane_models_flag

# data
tf2_msgs/TFMessage tf
bool tf_flag
tf2_msgs/TFMessage tf_static
bool tf_static_flag