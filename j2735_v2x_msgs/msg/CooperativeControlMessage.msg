#
# CooperativeControlMessage.msg
#
# J2735 2024 message format (J2945/6).
#

# CooperativeControlMessage ::= SEQUENCE {
#    coreData      BSMcoreData,
#    partII        SEQUENCE (SIZE(1..8)) OF
#                  CCMPartIIcontent {{ CCMpartIIExtension }} OPTIONAL,
#    ...
#    }

std_msgs/Header header

j2735_v2x_msgs/BSMCoreData core_data

uint8 presence_vector

uint8 HAS_PART_II = 1

j2735_v2x_msgs/CCMPartIIcontent[] part_ii

uint8 PART_II_MIN_SIZE = 1
uint8 PART_II_MAX_SIZE = 8
