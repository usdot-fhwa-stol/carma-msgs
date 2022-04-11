# MobilityPath.msg

# This message is used as a heartbeat message to broadcast a CAV's
# current planned 6-second trajectory in ECEF frame at a low frequency
# maybe at 1/3 Hz. When the previous planned trajectory is changed,
# the CAV should broadcast this message with new trajectory immediately

# standard header for all mobility messages
carma_v2x_msgs/MobilityHeader  m_header

# current trajectory
carma_v2x_msgs/Trajectory      trajectory
