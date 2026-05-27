#
# ManeuverSharingAndCoordinatingMessage.msg
#
# Modified J2735 2024 message format (J3186), adjusted to use base SI units (m,s, etc) in most case.
#

std_msgs/Header header

uint16 presence_vector

uint16 HAS_HV_POS = 1
uint16 HAS_HV_POS_XY_CONF = 2
uint16 HAS_DESTINATION_IDS = 4
uint16 HAS_MANEUVER_ID = 8
uint16 HAS_MANEUVER = 16
uint16 HAS_RESPONSE_FLAG = 32
uint16 HAS_REASON_CODE = 64
uint16 HAS_MANEUVER_EXECUTION_STATUS = 128

j2735_v2x_msgs/DDateTime mscm_timestamp

carma_v2x_msgs/Position3D hv_pos

carma_v2x_msgs/PositionalAccuracy hv_pos_xy_conf

j2735_v2x_msgs/MSCMType mscm_type

j2735_v2x_msgs/TemporaryID source_id

j2735_v2x_msgs/TemporaryIDList destination_ids

j2735_v2x_msgs/ManeuverID maneuver_id

carma_v2x_msgs/Maneuver maneuver

bool response_flag

j2735_v2x_msgs/ReasonCode reason_code

j2735_v2x_msgs/ManeuverExecutionStatus maneuver_execution_status
