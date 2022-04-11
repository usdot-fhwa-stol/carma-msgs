# MobilityOperation.msg

# This message is used by plugins to send necessary parameters to other
# CAVs at any desired frequency in order to accomplish a collaborative plan

# standard header for all mobility messages
carma_v2x_msgs/MobilityHeader  m_header

# strategy string to indicate which strategy type this message is used for
string                   strategy

# strategy parameters specified by each individual plugin/component
# the maximum length of this string is 100
string                   strategy_params
