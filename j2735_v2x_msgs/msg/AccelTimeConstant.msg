#
# AccelTimeConstant.msg
#
# J2735 2024 message format (J2945/6).
#

# AccelTimeConstant ::= SEQUENCE {
#    accelTimeConst     TimeConstant          OPTIONAL,
#    decelTimeConst     TimeConstant          OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_ACCEL_TIME_CONST = 1
uint8 HAS_DECEL_TIME_CONST = 2

j2735_v2x_msgs/TimeConstant accel_time_const
j2735_v2x_msgs/TimeConstant decel_time_const
