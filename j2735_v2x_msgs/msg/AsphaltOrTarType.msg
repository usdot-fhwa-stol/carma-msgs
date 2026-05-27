#
# AsphaltOrTarType.msg
#
# J2735 2024 message format.
#

# AsphaltOrTarType ::= ENUMERATED {
#    newSharp, traveled, trafficPolished, excessTar, ...
#    }

uint8 NEW_SHARP = 0
uint8 TRAVELED = 1
uint8 TRAFFIC_POLISHED = 2
uint8 EXCESS_TAR = 3

uint8 asphalt_or_tar_type
