#
# YawRate.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# YawRate in degrees per second in range (-327.67..327.67)
float32 yaw_rate

float32 MIN_YAW_RATE = -327.67
float32 MAX_YAW_RATE = 327.67