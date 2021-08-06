#
# Copyright (C) 2018-2021 LEIDOS.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#

cmake_minimum_required(VERSION 3.5)
project(cav_msgs)
set(CMAKE_CXX_STANDARD 14)

## Find ament macros and libraries
find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(j2735_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)

## Generate messages 
rosidl_generate_interfaces(
    ${PROJECT_NAME}
      msg/AccelerationSet4Way.msg
      msg/ActiveControlPlugin.msg
      msg/ActiveManeuvers.msg
      msg/AdvisorySpeed.msg
      msg/BasicVehicleClass.msg
      msg/BSMCoreData.msg
      msg/BSM.msg
      msg/ByteArray.msg
      msg/CarlaEnabled.msg
      msg/CheckActiveGeofence.msg
      msg/ComputedLane.msg
      msg/ConnectedVehicleList.msg
      msg/ConnectedVehicleType.msg
      msg/DailySchedule.msg
      msg/DriverStatus.msg
      msg/EngineBrakeCommand.msg
      msg/EngineBrakeLevel.msg
      msg/EngineBrakeMode.msg
      msg/ExternalObjectList.msg
      msg/ExternalObject.msg
      msg/GenericLane.msg
      msg/GuidanceAction.msg
      msg/GuidanceState.msg
      msg/HeadingStamped.msg
      msg/IntersectionGeometry.msg
      msg/IntersectionState.msg
      msg/IntersectionTransitLeftTurnManeuver.msg
      msg/IntersectionTransitRightTurnManeuver.msg
      msg/IntersectionTransitStraightManeuver.msg
      msg/LaneChangeInfo.msg
      msg/LaneChangeManeuver.msg
      msg/LaneChangeStatus.msg
      msg/LaneDataAttribute.msg
      msg/LaneEdgeType.msg
      msg/LaneFollowingManeuver.msg
      msg/LateralControl.msg
      msg/LightBarCDAType.msg
      msg/LightBarIndicatorControllers.msg
      msg/LightBarIndicator.msg
      msg/LightBarStatus.msg
      msg/LocalizationStatusReport.msg
      msg/LocationECEF.msg
      msg/LocationOffsetECEF.msg
      msg/Maneuver.msg
      msg/ManeuverParameters.msg
      msg/ManeuverPlan.msg
      msg/MapData.msg
      msg/MobilityAck.msg
      msg/MobilityAckType.msg
      msg/MobilityAgreementType.msg
      msg/MobilityGreeting.msg
      msg/MobilityHeader.msg
      msg/MobilityIntro.msg
      msg/MobilityOperation.msg
      msg/MobilityPath.msg
      msg/MobilityRequest.msg
      msg/MobilityResponse.msg
      msg/MovementEvent.msg
      msg/MovementState.msg
      msg/NewPlan.msg
      msg/NodeAttributeSetXY.msg
      msg/NodeListXY.msg
      msg/NodeOffsetPointXY.msg
      msg/NodeSetXY.msg
      msg/NodeXY.msg
      msg/OffsetAxis.msg
      msg/OffsetPoint.msg
      msg/PathNode.msg
      msg/PlanStatus.msg
      msg/PlanType.msg
      msg/PlatooningInfo.msg
      msg/PluginList.msg
      msg/Plugin.msg
      msg/PluginStatus.msg
      msg/Position3D.msg
      msg/PositionalAccuracy.msg
      msg/PredictedState.msg
      msg/RegionalExtension.msg
      msg/RegulatorySpeedLimit.msg
      msg/RepeatParams.msg
      msg/RoadSegment.msg
      msg/RoadType.msg
      msg/RoadwayObstacleList.msg
      msg/RoadwayObstacle.msg
      msg/RobotEnabled.msg
      msg/RouteEvent.msg
      msg/Route.msg
      msg/RouteSegment.msg
      msg/RouteState.msg
      msg/RouteWaypoint.msg
      msg/SPAT.msg
      msg/SpeedAccel.msg
      msg/SpeedLimitType.msg
      msg/StopAndWaitManeuver.msg
      msg/SystemAlert.msg
      msg/TimeChangeDetails.msg
      msg/TrafficControlBounds.msg
      msg/TrafficControlDetail.msg
      msg/TrafficControlGeometry.msg
      msg/TrafficControlMessage.msg
      msg/TrafficControlMessageV01.msg
      msg/TrafficControlParams.msg
      msg/TrafficControlRequest.msg
      msg/TrafficControlRequestPolygon.msg
      msg/TrafficControlRequestV01.msg
      msg/TrafficControlSchedule.msg
      msg/TrafficSignalInfoList.msg
      msg/TrafficSignalInfo.msg
      msg/TrailerAngle.msg
      msg/Trajectory.msg
      msg/TrajectoryPlan.msg
      msg/TrajectoryPlanPoint.msg
      msg/TurnSignal.msg
      msg/UIInstructions.msg
      msg/UpcomingLaneChangeStatus.msg
      msg/VehicleSize.msg
      msg/VehicleState.msg
    DEPENDENCIES
      std_msgs
      j2735_msgs
      builtin_interfaces
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()


