#
# HeavyTruckCCMExtensions.msg
#
# J2735 2024 message format (J2945/6).
#

# HeavyTruckCCMExtensions ::= SEQUENCE {
#    longCntrlState            LongitudinalControlState,
#    targetId                  TemporaryID                 OPTIONAL,
#    roadGrade                 RoadGrade                   OPTIONAL,
#    brakePedalPos             BrakePedalPosition          OPTIONAL,
#    accelPedalPos             AcceleratorPedalPosition    OPTIONAL,
#    desiredSpeed              Speed                       OPTIONAL,
#    desiredAccel              Acceleration                OPTIONAL,
#    desiredTorque             Torque                      OPTIONAL,
#    desiredTmRetarderTorque   Torque                      OPTIONAL,
#    desiredEngRetarderTorque  Torque                      OPTIONAL,
#    axesMvmt                  AxesMovement                OPTIONAL,
#    separationDist            SeparationDistance           OPTIONAL,
#    totalMass                 TotalMass                   OPTIONAL,
#    maxAvailAccel             MaxAvailableAcceleration    OPTIONAL,
#    maxAvailDecel             MaxAvailableDeceleration    OPTIONAL,
#    ccmFaultMode              CCMFaultMode                OPTIONAL,
#    maneuverID                ManeuverID                  OPTIONAL,
#    frontCutIn                FrontCutIn                  OPTIONAL,
#    ...
#    }

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

j2735_v2x_msgs/RoadGrade road_grade

j2735_v2x_msgs/BrakePedalPosition brake_pedal_pos

j2735_v2x_msgs/AcceleratorPedalPosition accel_pedal_pos

j2735_v2x_msgs/Speed desired_speed

int16 desired_accel

j2735_v2x_msgs/Torque desired_torque

j2735_v2x_msgs/Torque desired_tm_retarder_torque

j2735_v2x_msgs/Torque desired_eng_retarder_torque

j2735_v2x_msgs/AxesMovement axes_mvmt

j2735_v2x_msgs/SeparationDistance separation_dist

j2735_v2x_msgs/TotalMass total_mass

j2735_v2x_msgs/MaxAvailableAcceleration max_avail_accel

j2735_v2x_msgs/MaxAvailableDeceleration max_avail_decel

j2735_v2x_msgs/CCMFaultMode ccm_fault_mode

j2735_v2x_msgs/ManeuverID maneuver_id

bool front_cut_in
