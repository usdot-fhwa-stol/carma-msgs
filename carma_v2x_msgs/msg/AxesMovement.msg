#
# AxesMovement.msg
#
# Modified J2735 2024 message format (J2945/6), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 presence_vector

uint8 HAS_YAW = 1
uint8 HAS_PITCH = 2
uint8 HAS_ROLL = 4
uint8 HAS_YAW_RATE = 8
uint8 HAS_PITCH_RATE = 16
uint8 HAS_ROLL_RATE = 32

# Yaw in degrees, converted from 0.0125 deg LSB
float32 yaw

# Pitch in degrees, converted from 0.0125 deg LSB
float32 pitch

# Roll in degrees, converted from 0.0125 deg LSB
float32 roll

# Yaw rate in deg/s, converted from 0.01 deg/s LSB
carma_v2x_msgs/YawRate yaw_rate

# Pitch rate in deg/s, converted from 0.01 deg/s LSB
float32 pitch_rate

# Roll rate in deg/s, converted from 0.01 deg/s LSB
float32 roll_rate
