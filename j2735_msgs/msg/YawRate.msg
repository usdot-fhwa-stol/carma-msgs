#
# YawRate.msg
#
# J2735 2016 message format.
#

# YawRate ::= INTEGER (-32767..32767)
#   -- LSB units of 0.01 degrees per second (signed)

int16 yaw_rate

int16 MIN_YAW_RATE = -32767
int16 MAX_YAW_RATE = 32767