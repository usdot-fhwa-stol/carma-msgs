#
# RoadWeatherUpload.msg
#
# carma_v2x_msgs: SI-converted version.
#

uint8 choice

uint8 VEHICLE_REPORT = 0
uint8 CITIZEN_REPORT = 1

carma_v2x_msgs/VehicleReport[] vehicle_report

uint8 VEHICLE_REPORT_MIN_SIZE = 1
uint8 VEHICLE_REPORT_MAX_SIZE = 32

carma_v2x_msgs/SnapShot citizen_report
