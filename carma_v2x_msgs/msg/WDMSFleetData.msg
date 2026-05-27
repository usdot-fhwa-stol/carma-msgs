#
# WDMSFleetData.msg
#
# carma_v2x_msgs: SI-converted version.
#

uint8 presence_vector

uint8 HAS_PAVEMENT_TREAT = 1
uint8 HAS_ROUTING_ADVICE = 2

carma_v2x_msgs/NtcipPavementTreatment pavement_treat

j2735_v2x_msgs/ITIStext routing_advice
