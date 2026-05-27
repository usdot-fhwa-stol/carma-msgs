#
# RoadWeatherUpload.msg
#
# J2735 2024 message format.
#

# RoadWeatherUpload ::= CHOICE {
#    vehicleReport   SEQUENCE (SIZE(1..32)) OF VehicleReport,
#    citizenReport   SnapShot,
#    ...
#    }

uint8 choice

uint8 VEHICLE_REPORT = 0
uint8 CITIZEN_REPORT = 1

j2735_v2x_msgs/VehicleReport[] vehicle_report

uint8 VEHICLE_REPORT_MIN_SIZE = 1
uint8 VEHICLE_REPORT_MAX_SIZE = 32

j2735_v2x_msgs/SnapShot citizen_report
