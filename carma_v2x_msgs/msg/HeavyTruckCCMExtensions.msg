#
# HeavyTruckCCMExtensions.msg
#
# Modified J2735 2024 message format (J2945/6), adjusted to use base SI units (m,s, etc) in most case.
#

uint32 presence_vector

uint32 HAS_TARGET_ID = 1
uint32 HAS_ROAD_GRADE = 2
uint32 HAS_BRAKE_PEDAL_POS = 4
uint32 HAS_ACCEL_PEDAL_POS = 8
uint32 HAS_DESIRED_SPEED = 16
uint32 HAS_DESIRED_ACCEL = 32
uint32 HAS_DESIRED_TORQUE = 64
uint32 HAS_DESIRED_TM_RETARDER_TORQUE = 128
uint32 HAS_DESIRED_ENG_RETARDER_TORQUE = 256
uint32 HAS_AXES_MVMT = 512
uint32 HAS_SEPARATION_DIST = 1024
uint32 HAS_TOTAL_MASS = 2048
uint32 HAS_MAX_AVAIL_ACCEL = 4096
uint32 HAS_MAX_AVAIL_DECEL = 8192
uint32 HAS_CCM_FAULT_MODE = 16384
uint32 HAS_MANEUVER_ID = 32768
uint32 HAS_FRONT_CUT_IN = 65536

j2735_v2x_msgs/LongitudinalControlState long_cntrl_state

j2735_v2x_msgs/TemporaryID target_id

# Road grade in percent, converted from 0.2% LSB
float32 road_grade

# Brake pedal position in percent, converted from 0.5% LSB
float32 brake_pedal_pos

# Accelerator pedal position in percent, converted from 0.5% LSB
float32 accel_pedal_pos

# Speed in m/s, converted from 0.02 m/s LSB
carma_v2x_msgs/Speed desired_speed

# Acceleration in m/s^2, converted from 0.01 m/s^2 LSB
float32 desired_accel

# Torque in N-m, converted from 5 N-m LSB
float32 desired_torque

# Torque in N-m, converted from 5 N-m LSB
float32 desired_tm_retarder_torque

# Torque in N-m, converted from 5 N-m LSB
float32 desired_eng_retarder_torque

carma_v2x_msgs/AxesMovement axes_mvmt

# Separation distance in m, converted from 0.1 m LSB
float32 separation_dist

# Total mass in kg, converted from 100 kg LSB
float32 total_mass

# Max available acceleration in m/s^2, converted from 0.01 m/s^2 LSB
float32 max_avail_accel

# Max available deceleration in m/s^2, converted from 0.01 m/s^2 LSB
float32 max_avail_decel

j2735_v2x_msgs/CCMFaultMode ccm_fault_mode

j2735_v2x_msgs/ManeuverID maneuver_id

bool front_cut_in
