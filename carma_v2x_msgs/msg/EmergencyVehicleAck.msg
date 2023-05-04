# EmergencyVehicleAck.msg

# This message is used by an emergency vehicle to acknowledge receipt of an 
# EmergencyVehicleResponse message from a carma-equipped vehicle

# standard header for all mobility messages
carma_v2x_msgs/MobilityHeader m_header

# True when the emergency vehicle has received the EmergencyVehicleResponse message. Currently this should never be false
bool acknowledgement
