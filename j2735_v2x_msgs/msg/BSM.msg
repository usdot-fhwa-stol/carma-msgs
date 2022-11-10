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

#    -- Part II Content

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_PART_II_EXTENSION) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_PART_II_EXTENSION
uint8 presence_vector

uint8 HAS_PART_II = 1
uint8 HAS_REGIONAL = 2

#    partII        SEQUENCE (SIZE(1..8)) OF 
#                  PartIIcontent {{ BSMpartIIExtension }} OPTIONAL,
j2735_v2x_msgs/BSMPartIIExtension[] part_ii

uint8 PART_II_MIN_SIZE = 1
uint8 PART_II_MAX_SIZE = 8

#    regional      SEQUENCE (SIZE(1..4)) OF 
#                 RegionalExtension {{REGION.Reg-BasicSafetyMessage}} OPTIONAL,
j2735_v2x_msgs/BSMRegionalExtension[] regional

uint8 REGIONAL_MIN_SIZE = 1
uint8 REGIONAL_MAX_SIZE = 4