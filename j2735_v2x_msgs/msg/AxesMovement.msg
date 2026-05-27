#
# AxesMovement.msg
#
# J2735 2024 message format (J2945/6).
#

# AxesMovement ::= SEQUENCE {
#    yaw            Yaw            OPTIONAL,
#    pitch          Pitch          OPTIONAL,
#    roll           Roll           OPTIONAL,
#    yawRate        YawRate        OPTIONAL,
#    pitchRate      PitchRate      OPTIONAL,
#    rollRate       RollRate       OPTIONAL
#    }

uint8 presence_vector

uint8 HAS_YAW = 1
uint8 HAS_PITCH = 2
uint8 HAS_ROLL = 4
uint8 HAS_YAW_RATE = 8
uint8 HAS_PITCH_RATE = 16
uint8 HAS_ROLL_RATE = 32

j2735_v2x_msgs/Yaw yaw

j2735_v2x_msgs/Pitch pitch

j2735_v2x_msgs/Roll roll

j2735_v2x_msgs/YawRate yaw_rate

j2735_v2x_msgs/CCMPitchRate pitch_rate

j2735_v2x_msgs/CCMRollRate roll_rate
