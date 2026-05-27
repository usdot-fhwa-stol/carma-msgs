#
# RoadWeatherMessage.msg
#
# carma_v2x_msgs: SI-converted version.
#

std_msgs/Header header

uint8 choice

uint8 UPLOAD = 0
uint8 DOWNLOAD = 1

carma_v2x_msgs/RoadWeatherUpload upload

carma_v2x_msgs/RoadWeatherDownload download
