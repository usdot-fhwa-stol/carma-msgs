#
# LightVehicleCCMExtensions.msg
#
# J2735 2024 message format (J2945/6).
#

# LightVehicleCCMExtensions ::= SEQUENCE {
#    longCntrlState     LongitudinalControlState,
#    targetId           TemporaryID                 OPTIONAL,
#    accelForecast      Acceleration                OPTIONAL,
#    accelTimeConst     AccelTimeConstant           OPTIONAL,
#    seperationDist     SeparationDistance           OPTIONAL,
#    frontCutIn         FrontCutIn                  OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_TARGET_ID = 1
uint8 HAS_ACCEL_FORECAST = 2
uint8 HAS_ACCEL_TIME_CONST = 4
uint8 HAS_SEPERATION_DIST = 8
uint8 HAS_FRONT_CUT_IN = 16

j2735_v2x_msgs/LongitudinalControlState long_cntrl_state

j2735_v2x_msgs/TemporaryID target_id

int16 accel_forecast

j2735_v2x_msgs/AccelTimeConstant accel_time_const

j2735_v2x_msgs/SeparationDistance seperation_dist

bool front_cut_in
