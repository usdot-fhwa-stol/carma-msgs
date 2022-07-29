# MobilityResponse.msg

# This is the response to send to another CAV when the host vehicle
# recevied a MobilityRequest from that CAV and decide to involve in that plan

# standard header for all mobility messages
carma_v2x_msgs/MobilityHeader   m_header

# urgency of the current plan from 0 to 1000
uint16                    urgency

# the content of this response
bool                      is_accepted

# type of the proposal being suggested to neighbors
carma_v2x_msgs/PlanType plan_type

# 
carma_v2x_msgs/MobilityReason   reason         # OPTIONAL

# Whether or not to repeat the MobilityRequest
carma_v2x_msgs/MobilityRepeat   repeat         # OPTIONAL