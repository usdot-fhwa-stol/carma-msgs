uint8 MOTION_MODEL_CTRV=1
uint8 MOTION_MODEL_CTRA=2
uint8 MOTION_MODEL_CV=3

std_msgs/Header header

string id

uint8 motion_model

geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist
geometry_msgs/AccelWithCovariance accel
