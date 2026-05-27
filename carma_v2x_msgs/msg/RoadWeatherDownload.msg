#
# RoadWeatherDownload.msg
#
# carma_v2x_msgs: SI-converted version.
#

uint8 presence_vector

uint8 HAS_WDMS_FLEET_DATA = 1

j2735_v2x_msgs/TravelerDataFrameList traveler_data

carma_v2x_msgs/WDMSFleetData wdms_fleet_data
