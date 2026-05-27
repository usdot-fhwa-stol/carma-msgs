#
# RoadWeatherMessage.msg
#
# J2735 2024 message format.
#

# RoadWeatherMessage ::= CHOICE {
#    upload    RoadWeatherUpload,
#    download  RoadWeatherDownload,
#    ...
#    }

std_msgs/Header header

uint8 choice

uint8 UPLOAD = 0
uint8 DOWNLOAD = 1

j2735_v2x_msgs/RoadWeatherUpload upload

j2735_v2x_msgs/RoadWeatherDownload download
