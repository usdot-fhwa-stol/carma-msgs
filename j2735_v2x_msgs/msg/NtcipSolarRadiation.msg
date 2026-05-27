#
# NtcipSolarRadiation.msg
#
# J2735 2024 message format.
#

# NtcipSolarRadiation ::= SEQUENCE {
#    solarRadiation      NTCIPEssTotalRadiationV4,
#    measurementPeriod   NTCIPEssTotalRadiationPeriod,
#    ...
#    }

j2735_v2x_msgs/NTCIPEssTotalRadiationV4 solar_radiation

j2735_v2x_msgs/NTCIPEssTotalRadiationPeriod measurement_period
