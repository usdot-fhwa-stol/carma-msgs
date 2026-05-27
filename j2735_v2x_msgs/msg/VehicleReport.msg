#
# VehicleReport.msg
#
# J2735 2024 message format.
#

# VehicleReport ::= SEQUENCE {
#    snapShot         SnapShot,
#    wdmsFleetData    WDMSFleetData      OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_WDMS_FLEET_DATA = 1

j2735_v2x_msgs/SnapShot snap_shot

j2735_v2x_msgs/WDMSFleetData wdms_fleet_data
