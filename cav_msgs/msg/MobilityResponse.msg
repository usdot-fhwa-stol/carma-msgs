# MobilityResponse.msg

# This is the response to send to another CAV when the host vehicle
# recevied a MobilityRequest from that CAV and decide to involve in that plan

# standard header for all mobility messages
cav_msgs/MobilityHeader   m_header

# urgency of the current plan from 0 to 1000
uint16                    urgency

# the content of this response
bool                      is_accepted

# type of the proposal being suggested to neighbors
cav_msgs/MobilityPlanType planType

# 
cav_msgs/MobilityReason   reason         # OPTIONAL

# Whether or not to repeat the MobilityRequest
cav_msgs/MobilityRepeat   repeat         # OPTIONAL