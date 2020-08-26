std_msgs/Header header

# Have messages for each of the topics for each of the mock drivers from the rosbag file

# camera

sensor_msgs/CameraInfo camera_info
std_msgs/Bool camera_info_bool
sensor_msgs/Image image_raw
std_msgs/Bool image_raw_bool
sensor_msgs/Image image_rects
std_msgs/Bool image_rects_bool
autoware_msgs/ProjectionMatrix projection_matrix
std_msgs/Bool projection_matrix_bool

# can

std_msgs/Bool acc_engaged
std_msgs/Bool acc_engaged_bool
std_msgs/Float64 acceleration
std_msgs/Bool acceleration_bool
std_msgs/Bool antilock_brakes_active
std_msgs/Bool antilock_brakes_active_bool
std_msgs/Bool brake_lights
std_msgs/Bool brake_lights_bool
std_msgs/Float64 brake_position
std_msgs/Bool brake_position_bool
std_msgs/Float64 engine_speed
std_msgs/Bool engine_speed_bool
std_msgs/Float64 fuel_flow
std_msgs/Bool fuel_flow_bool
std_msgs/Float64 odometer
std_msgs/Bool odometer_bool
std_msgs/Bool parking_brake
std_msgs/Bool parking_brake_bool
std_msgs/Float64 speed
std_msgs/Bool speed_bool
std_msgs/Bool stability_ctrl_active
std_msgs/Bool stability_ctrl_active_bool
std_msgs/Bool stability_ctrl_enabled
std_msgs/Bool stability_ctrl_enabled_bool
std_msgs/Float64 steering_wheel_angle
std_msgs/Bool steering_wheel_angle_bool
std_msgs/Float64 throttle_position
std_msgs/Bool throttle_position_bool
std_msgs/Bool traction_ctrl_active
std_msgs/Bool traction_ctrl_active_bool
std_msgs/Bool traction_ctrl_enabled
std_msgs/Bool traction_ctrl_enabled_bool
j2735_msgs/TransmissionState transmission_state
std_msgs/Bool transmission_state_bool
cav_msgs/TurnSignal turn_signal_state
std_msgs/Bool turn_signal_state_bool
geometry_msgs/TwistStamped vehicle_twist
std_msgs/Bool vehicle_twist_bool
autoware_msgs/VehicleStatus vehicle_status
std_msgs/Bool vehicle_status_bool
automotive_platform_msgs/VelocityAccel velocity_accel
std_msgs/Bool velocity_accel_bool

# comms

cav_msgs/ByteArray inbound_binary_msg
std_msgs/Bool inbound_binary_msg_bool

# controller

cav_msgs/RobotEnabled robot_status
std_msgs/Bool robot_status_bool

# gnss

gps_common/GPSFix gnss_fixed_fused
std_msgs/Bool gnss_fixed_fused_bool

# imu

sensor_msgs/Imu raw_data
std_msgs/Bool raw_data_bool

# lidar

sensor_msgs/PointCloud2 points_raw
std_msgs/Bool points_raw_bool

# radar

radar_msgs/RadarStatus status
std_msgs/Bool status_bool
radar_msgs/RadarTrackArray tracks_raw
std_msgs/Bool tracks_raw_bool

# roadway_sensor

derived_object_msgs/ObjectWithCovariance detected_objects
std_msgs/Bool detected_objects_bool
derived_object_msgs/LaneModels lane_models
std_msgs/Bool lane_models_bool

# data
tf2_msgs/TFMessage tf
std_msgs/Bool tf_bool
tf2_msgs/TFMessage tf_static
std_msgs/Bool tf_static_bool