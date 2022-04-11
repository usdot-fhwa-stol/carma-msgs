#
# TrafficControlMessage.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
# 
# @version 0.1
#
# Description
# ...


# TrafficControlMessage ::= CHOICE
# {
# 	reserved NULL, -- skip version zero
# 	tcm_v01 TrafficControlMessageV01, -- traffic control message version 1
# 	...
# }


uint8 choice

uint8 RESERVED=0
uint8 TCMV01=1

#tcm_v01 ::= TrafficControlMessageV01
carma_v2x_msgs/TrafficControlMessageV01 tcm_v01
