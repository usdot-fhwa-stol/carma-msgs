#
# LightVehicleCCMExtensions.msg
#
# Modified J2735 2024 message format (J2945/6), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 presence_vector

uint8 HAS_TARGET_ID = 1
uint8 HAS_ACCEL_FORECAST = 2
uint8 HAS_ACCEL_TIME_CONST = 4
uint8 HAS_SEPERATION_DIST = 8
uint8 HAS_FRONT_CUT_IN = 16

j2735_v2x_msgs/LongitudinalControlState long_cntrl_state

j2735_v2x_msgs/TemporaryID target_id

# Acceleration in m/s^2, converted from 0.01 m/s^2 LSB
float32 accel_forecast

j2735_v2x_msgs/AccelTimeConstant accel_time_const

# Separation distance in m, converted from 0.1 m LSB
float32 seperation_dist

bool front_cut_in
