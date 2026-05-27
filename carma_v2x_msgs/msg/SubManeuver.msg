#
# SubManeuver.msg
#
# Modified J2735 2024 message format (J3186), adjusted to use base SI units (m,s, etc) in most case.
#

uint8 presence_vector

uint8 HAS_TARGET_ROAD_RESOURCE = 1
uint8 HAS_MIN_SPEED = 2
uint8 HAS_MAX_SPEED = 4

j2735_v2x_msgs/TemporaryID executant_veh_id

j2735_v2x_msgs/TemporaryIDPointer affected_veh_ids

carma_v2x_msgs/CurrentStateData current_state_data

carma_v2x_msgs/TargetRoadResource target_road_resource

j2735_v2x_msgs/DDateTime start_time

j2735_v2x_msgs/DDateTime end_time

carma_v2x_msgs/Speed min_speed

carma_v2x_msgs/Speed max_speed
