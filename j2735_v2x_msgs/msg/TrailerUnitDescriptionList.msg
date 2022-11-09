#
# TrailerUnitDescriptionList.msg
#
# J2735 2016 message format.
#

# TrailerUnitDescriptionList ::= SEQUENCE (SIZE(1..8)) OF TrailerUnitDescription
j2735_v2x_msgs/TrailerUnitDescription[] trailer_unit_descriptions

uint8 SIZE_MIN = 1
uint8 SIZE_MAX = 8