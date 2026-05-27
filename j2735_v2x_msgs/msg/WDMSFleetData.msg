#
# WDMSFleetData.msg
#
# J2735 2024 message format.
#

# WDMSFleetData ::= SEQUENCE {
#    pavementTreat   NtcipPavementTreatment  OPTIONAL,
#    routingAdvice   ITIStext                OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_PAVEMENT_TREAT = 1
uint8 HAS_ROUTING_ADVICE = 2

j2735_v2x_msgs/NtcipPavementTreatment pavement_treat

j2735_v2x_msgs/ITIStext routing_advice
