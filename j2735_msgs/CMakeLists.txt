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
project(j2735_msgs)
set(CMAKE_CXX_STANDARD 14)

## Find ament macros and libraries
find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(
    ${PROJECT_NAME}
        msg/OffsetXaxis.msg
        msg/MovementEvent.msg
        msg/RoadSegmentReferenceID.msg
        msg/Connection.msg
        msg/MovementEventList.msg
        msg/SegmentAttributeXY.msg
        msg/LaneAttributesSidewalk.msg
        msg/ByteArray.msg
        msg/VehicleSize.msg
        msg/OverlayLaneList.msg
        msg/BrakeAppliedStatus.msg
        msg/ManeuverAssistList.msg
        msg/RegulatorySpeedLimit.msg
        msg/ConnectionManeuverAssist.msg
        msg/NodeAttributeSetXY.msg
        msg/DayOfWeek.msg
        msg/Id64b.msg
        msg/SpeedLimitType.msg
        msg/NodeXY20b.msg
        msg/NodeSetXY.msg
        msg/BrakeBoostApplied.msg
        msg/OffsetYaxis.msg
        msg/IntersectionReferenceID.msg
        msg/BrakeSystemStatus.msg
        msg/LayerType.msg
        msg/NodeXY28b.msg
        msg/SpeedLimitList.msg
        msg/AntiLockBrakeStatus.msg
        msg/TrafficControlRequest.msg
        msg/MovementList.msg
        msg/NodeXY32b.msg
        msg/TrafficControlMessageV01.msg
        msg/NodeXY.msg
        msg/IntersectionState.msg
        msg/RepeatParams.msg
        msg/IntersectionStateList.msg
        msg/IntersectionStatusObject.msg
        msg/LaneAttributesStriping.msg
        msg/LaneAttributesBarrier.msg
        msg/RestrictionAppliesTo.msg
        msg/StabilityControlStatus.msg
        msg/AdvisorySpeed.msg
        msg/NodeXY24b.msg
        msg/LaneAttributesTrackedVehicle.msg
        msg/Position3D.msg
        msg/NodeListXY.msg
        msg/RoadLaneSetList.msg
        msg/SPAT.msg
        msg/LaneAttributesBike.msg
        msg/RoadSegmentList.msg
        msg/NodeAttributeXYList.msg
        msg/RestrictionUserTypeList.msg
        msg/TrafficControlGeometry.msg
        msg/NodeXY22b.msg
        msg/RoadSegment.msg
        msg/TrafficControlBounds.msg
        msg/AuxiliaryBrakeStatus.msg
        msg/MovementPhaseState.msg
        msg/OffsetPoint.msg
        msg/PositionalAccuracy.msg
        msg/LaneTypeAttributes.msg
        msg/Id128b.msg
        msg/LaneAttributesParking.msg
        msg/TrafficControlRequestV01.msg
        msg/LaneAttributes.msg
        msg/NodeAttributeXY.msg
        msg/NodeXY26b.msg
        msg/TrafficControlPackage.msg
        msg/RestrictionClassList.msg
        msg/AdvisorySpeedType.msg
        msg/AccelerationSet4Way.msg
        msg/TrafficControlMessage.msg
        msg/LaneDataAttribute.msg
        msg/TimeChangeDetails.msg
        msg/TrafficControlSchedule.msg
        msg/SignalControlZone.msg
        msg/LaneDirection.msg
        msg/PathNode.msg
        msg/DailySchedule.msg
        msg/ConnectingLane.msg
        msg/DataParameters.msg
        msg/TractionControlStatus.msg
        msg/RestrictionClassAssignment.msg
        msg/SegmentAttributeXYList.msg
        msg/RestrictionUserType.msg
        msg/GenericLane.msg
        msg/SpeedConfidence.msg
        msg/NodeOffsetPointXY.msg
        msg/ConnectsToList.msg
        msg/ComputedLane.msg
        msg/NodeLLmD64b.msg
        msg/LaneDataAttributeList.msg
        msg/TransmissionState.msg
        msg/LaneList.msg
        msg/LaneAttributesVehicle.msg
        msg/MovementState.msg
        msg/AdvisorySpeedList.msg
        msg/BSMCoreData.msg
        msg/TrafficControlDetail.msg
        msg/MapData.msg
        msg/RegionalExtension.msg
        msg/TrafficControlParams.msg
        msg/BSM.msg
        msg/AllowedManeuvers.msg
        msg/LaneAttributesCrosswalk.msg
        msg/LaneSharing.msg
        msg/EnabledLaneList.msg
        msg/TrafficControlVehClass.msg
        msg/PreemptPriorityList.msg
        msg/IntersectionGeometry.msg
    DEPENDENCIES
        std_msgs
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
