#
# NtcipRelativeHumidity.msg
#
# J2735 2024 message format.
#

# NtcipRelativeHumidity ::= SEQUENCE {
#    relHumidity     NTCIPHumiditySensorRelativeHumidity,
#    source          DataSourceInfo                  OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_SOURCE = 1

j2735_v2x_msgs/NTCIPHumiditySensorRelativeHumidity rel_humidity

j2735_v2x_msgs/DataSourceInfo source
