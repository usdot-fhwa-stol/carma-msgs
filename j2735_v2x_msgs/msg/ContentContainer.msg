#
# ContentContainer.msg
#
# J2735 2024 message format.
#

# ContentContainer ::= CHOICE {
#    rszContainer           ReducedSpeedZoneContainer,
#    laneClosureContainer   LaneClosureContainer,
#    curveContainer         CurveContainer,
#    dynamicInfoContainer   DynamicInfoContainer,
#    incidentsContainer     IncidentsContainer,
#    situationalContainer   SituationalContainer,
#    ...
#    }

uint8 choice

uint8 RSZ_CONTAINER = 0
uint8 LANE_CLOSURE_CONTAINER = 1
uint8 CURVE_CONTAINER = 2
uint8 DYNAMIC_INFO_CONTAINER = 3
uint8 INCIDENTS_CONTAINER = 4
uint8 SITUATIONAL_CONTAINER = 5

j2735_v2x_msgs/ReducedSpeedZoneContainer rsz_container

j2735_v2x_msgs/LaneClosureContainer lane_closure_container

j2735_v2x_msgs/CurveContainer curve_container

j2735_v2x_msgs/DynamicInfoContainer dynamic_info_container

j2735_v2x_msgs/IncidentsContainer incidents_container

j2735_v2x_msgs/SituationalContainer situational_container
