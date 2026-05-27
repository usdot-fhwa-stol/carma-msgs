#
# CooperativeControlMessage.msg
#
# Modified J2735 2024 message format (J2945/6), adjusted to use base SI units (m,s, etc) in most case.
#

# CooperativeControlMessage ::= SEQUENCE {
#    coreData      BSMcoreData,
#    partII        SEQUENCE (SIZE(1..8)) OF
#                  CCMPartIIcontent {{ CCMpartIIExtension }} OPTIONAL,
#    ...
#    }

std_msgs/Header header

carma_v2x_msgs/BSMCoreData core_data

uint8 presence_vector

uint8 HAS_PART_II = 1

carma_v2x_msgs/CCMPartIIcontent[] part_ii

uint8 PART_II_MIN_SIZE = 1
uint8 PART_II_MAX_SIZE = 8
