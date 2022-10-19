# EmergencyVehicleResponse.msg

# This message is used to respond to an emegency vehicle, 
#   usually to let them know that this vehicle cannot make a lane change to get out of the way

# standard header for all mobility messages
carma_v2x_msgs/MobilityHeader m_header

# False if the vehicle can not get out of the way
bool can_change_lanes

# OPTIONAL text reason to no be able to get out of the way
# The maximum length is 128
# example: "CMV is unable to change lanes for <insert-supported-reason-here>"
string reason
