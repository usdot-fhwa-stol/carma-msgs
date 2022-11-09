#
# BSM.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#

std_msgs/Header header

# -- Part I, Sent at all times with each message
j2735_v2x_msgs/BSMCoreData core_data

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_PART_II_EXTENSION) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_PART_II_EXTENSION
uint8 presence_vector

uint8 HAS_PART_II = 1
uint8 HAS_REGIONAL = 2

#    -- Part II Content
#    partII        SEQUENCE (SIZE(1..8)) OF 
#                  PartIIcontent {{ BSMpartIIExtension }} OPTIONAL,
j2735_v2x_mgs/BSMPartIIExtension[] part_ii

#    regional      SEQUENCE (SIZE(1..4)) OF 
#                 RegionalExtension {{REGION.Reg-BasicSafetyMessage}} OPTIONAL,
j2735_v2x_msgs/BSMRegionalExtension[] regional