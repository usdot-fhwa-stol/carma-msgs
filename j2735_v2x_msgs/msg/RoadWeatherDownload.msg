#
# RoadWeatherDownload.msg
#
# J2735 2024 message format.
#

# RoadWeatherDownload ::= SEQUENCE {
#    travelerData    TravelerDataFrameList,
#    wdmsFleetData   WDMSFleetData OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_WDMS_FLEET_DATA = 1

j2735_v2x_msgs/TravelerDataFrameList traveler_data

j2735_v2x_msgs/WDMSFleetData wdms_fleet_data
