#
# TrailerUnitDescriptionList.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerUnitDescriptionList ::= SEQUENCE (SIZE(1..8)) OF TrailerUnitDescription
carma_v2x_msgs/TrailerUnitDescription[] trailer_unit_descriptions

uint8 MIN_SIZE = 1
uint8 MAX_SIZE = 8