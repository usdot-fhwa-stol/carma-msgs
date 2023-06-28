#
# SensorDataSharingMessage.msg
#
# J3224 2020 message format.
#

# SensorDataSharingMessage ::= SEQUENCE {
#   msgCnt MsgCount,
#   -- Sequence number
#   sourceID TemporaryID,
#   -- temporary vehicle ID / RSU ID. SDSM source.
#   equipmentType EquipmentType,
#   -- Sender type
#   sDSMTimeStamp DDateTime,
#   -- SDSM transmission time
#   refPos Position3D,
#   -- Sender reference position
#   refPosXYConf PositionalAccuracy,
#   refPosElConf ElevationConfidence OPTIONAL,
#   objects DetectedObjectList
#   -- detected objects
# } 

j2735_v2x_msgs/MsgCount msg_cnt 

j2735_v2x_msgs/TemporaryID source_id

j3224_v2x_msgs/EquipmentType equipment_type

j2735_v2x_msgs/DDateTime sdsm_time_stamp

j2735_v2x_msgs/Position3D ref_pos

j2735_v2x_msgs/PositionalAccuracy ref_pos_xy_conf

j3224_v2x_msgs/DetectedObjectList objects 

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_REF_POS_XY_CONF) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_REF_POS_XY_CONF
uint8 presence_vector

uint8 HAS_REF_POS_XY_CONF = 1

j2735_v2x_msgs/ElevationConfidence ref_pos_el_conf