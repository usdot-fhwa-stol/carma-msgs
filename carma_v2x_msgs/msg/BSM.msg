#
# BSM.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# This is the parsed version of BSMRaw that will be passed around between Guidance, Negotiator, Message and other nodes. 

std_msgs/Header header

# -- Part I, Sent at all times with each message
carma_v2x_msgs/BSMCoreData core_data


#    -- Part II Content
#    partII        SEQUENCE (SIZE(1..8)) OF 
#                  PartIIcontent {{ BSMpartIIExtension }} OPTIONAL,
carma_v2x_msgs/BSMPartIIExtension[] part_ii
bool part_ii_exists

#    regional      SEQUENCE (SIZE(1..4)) OF 
#                 RegionalExtension {{REGION.Reg-BasicSafetyMessage}} OPTIONAL,
carma_v2x_msgs/BSMRegionalExtension[] regional
bool regional_exists


