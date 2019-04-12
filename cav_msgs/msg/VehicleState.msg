# VehicleState.msg
#
# Message defines the host vehicle state at a given point in time
#
# The fields of this message are defined relative to the vehicle state and control models described in the VehicleModelLib documentation
# This message must contain a super set of the fields
# 
  struct VehicleState
  {
    /**
     * 2d x-axis position of the vehicle center of gravity in meters
     * This position is in a fixed inertial frame which vehicle motion is described in
     */ 
    double X_pos_global = 0;
    /**
     * 2d y-axis position of the vehicle center of gravity in meters
     * This position is in a fixed inertial frame which vehicle motion is described in
     */ 
    double Y_pos_global = 0;
    /**
     * The orientation of the vehicle's longitudinal axis in radians
     * This orientation is in a fixed inertial frame which vehicle motion is described in
     */ 
    double orientation = 0;
    /**
     * longitudinal velocity of the vehicle center of gravity in m/s in its body frame
     */ 
    double longitudinal_vel = 0;
    /**
     * lateral velocity of the vehicle center of gravity in m/s in its body frame
     */ 
    double lateral_vel = 0;
    /**
     * The yaw rate of the vehicle in rad/s in the body frame which is equivalent to the rate of change of orientation
     */ 
    double yaw_rate = 0;
    /** 
     * The angular velocity of the front wheel in rad/s
     */ 
    double front_wheel_rotation_rate = 0;
    /**
     * The angular velocity of the rear wheel in rad/s
     */ 
    double rear_wheel_rotation_rate = 0;
    /**
     * The steering angle of the front wheel in rad with left being positive
     */ 
    double steering_angle = 0;
    /**
     * The angle the trailer makes with the vehicle longitudinal axis in rad with left being positive
     */ 
    double trailer_angle = 0;
    /**
     * The previous velocity command in m/s
     */ 
    double prev_vel_cmd = 0;
    /**
     * The previous steering command in rad
     */ 
    double prev_steering_cmd = 0;