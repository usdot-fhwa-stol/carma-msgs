#
# SubManeuver.msg
#
# J2735 2024 message format (J3186).
#

# SubManeuver ::= SEQUENCE {
#    executantVehID      TemporaryID,
#    affectedVehIDs      TemporaryIDPointer,
#    currentStateData    CurrentStateData,
#    targetRoadResource  TargetRoadResource OPTIONAL,
#    startTime           DDateTime,
#    endTime             DDateTime,
#    minSpeed            Speed              OPTIONAL,
#    maxSpeed            Speed              OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_TARGET_ROAD_RESOURCE = 1
uint8 HAS_MIN_SPEED = 2
uint8 HAS_MAX_SPEED = 4

j2735_v2x_msgs/TemporaryID executant_veh_id

j2735_v2x_msgs/TemporaryIDPointer affected_veh_ids

j2735_v2x_msgs/CurrentStateData current_state_data

j2735_v2x_msgs/TargetRoadResource target_road_resource

j2735_v2x_msgs/DDateTime start_time

j2735_v2x_msgs/DDateTime end_time

j2735_v2x_msgs/Speed min_speed

j2735_v2x_msgs/Speed max_speed
