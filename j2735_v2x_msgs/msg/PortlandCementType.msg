#
# PortlandCementType.msg
#
# J2735 2024 message format.
#

# PortlandCementType ::= ENUMERATED {
#    newSharp, traveled, trafficPolished, ...
#    }

uint8 NEW_SHARP = 0
uint8 TRAVELED = 1
uint8 TRAFFIC_POLISHED = 2

uint8 portland_cement_type
