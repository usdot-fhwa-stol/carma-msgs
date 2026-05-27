#
# ManeuverSharingAndCoordinatingMessage.msg
#
# J2735 2024 message format (J3186).
#

# ManeuverSharingAndCoordinatingMessage ::= SEQUENCE {
#    mSCMTimestamp               DDateTime,
#    hVPos                       Position3D             OPTIONAL,
#    hVPosXYConf                 PositionalAccuracy     OPTIONAL,
#    mSCMType                    MSCMType,
#    sourceID                    TemporaryID,
#    destinationIDs              TemporaryIDList        OPTIONAL,
#    maneuverID                  ManeuverID             OPTIONAL,
#    maneuver                    Maneuver               OPTIONAL,
#    responseFlag                ResponseFlag           OPTIONAL,
#    reasonCode                  ReasonCode             OPTIONAL,
#    maneuverExecutionStatus     ManeuverExecutionStatus OPTIONAL,
#    ...
#    }

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

j2735_v2x_msgs/Position3D hv_pos

j2735_v2x_msgs/PositionalAccuracy hv_pos_xy_conf

j2735_v2x_msgs/MSCMType mscm_type

j2735_v2x_msgs/TemporaryID source_id

j2735_v2x_msgs/TemporaryIDList destination_ids

j2735_v2x_msgs/ManeuverID maneuver_id

j2735_v2x_msgs/Maneuver maneuver

bool response_flag

j2735_v2x_msgs/ReasonCode reason_code

j2735_v2x_msgs/ManeuverExecutionStatus maneuver_execution_status
