#
# NtcipEssData.msg
#
# J2735 2024 message format.
#

# NtcipEssData ::= SEQUENCE {
#    airTemp         NtcipAirTemperature         OPTIONAL,
#    atmosphere      NtcipAtmosphericPressure    OPTIONAL,
#    wind            NtcipWind                   OPTIONAL,
#    humidity        NtcipRelativeHumidity       OPTIONAL,
#    dewpoint        NtcipDewPoint               OPTIONAL,
#    pavement        NtcipPavement               OPTIONAL,
#    visibility      NtcipVisibility             OPTIONAL,
#    visSituation    NtcipVisibilitySituation    OPTIONAL,
#    cloudSitiation  NtcipCloudSituation         OPTIONAL,
#    precipitation   NtcipPrecipitation          OPTIONAL,
#    solarRadiation  NtcipSolarRadiation         OPTIONAL,
#    ...
#    }

uint16 presence_vector

uint16 HAS_AIR_TEMP = 1
uint16 HAS_ATMOSPHERE = 2
uint16 HAS_WIND = 4
uint16 HAS_HUMIDITY = 8
uint16 HAS_DEWPOINT = 16
uint16 HAS_PAVEMENT = 32
uint16 HAS_VISIBILITY = 64
uint16 HAS_VIS_SITUATION = 128
uint16 HAS_CLOUD_SITUATION = 256
uint16 HAS_PRECIPITATION = 512
uint16 HAS_SOLAR_RADIATION = 1024

j2735_v2x_msgs/NtcipAirTemperature air_temp

j2735_v2x_msgs/NtcipAtmosphericPressure atmosphere

j2735_v2x_msgs/NtcipWind wind

j2735_v2x_msgs/NtcipRelativeHumidity humidity

j2735_v2x_msgs/NtcipDewPoint dewpoint

j2735_v2x_msgs/NtcipPavement pavement

j2735_v2x_msgs/NtcipVisibility visibility

j2735_v2x_msgs/NtcipVisibilitySituation vis_situation

j2735_v2x_msgs/NtcipCloudSituation cloud_situation

j2735_v2x_msgs/NtcipPrecipitation precipitation

j2735_v2x_msgs/NtcipSolarRadiation solar_radiation
