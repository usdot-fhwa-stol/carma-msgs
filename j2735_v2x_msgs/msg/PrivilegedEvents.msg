#
# PrivilegedEvents.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

#  PrivilegedEvents ::= SEQUENCE {
#  notUsed SSPindex,
#  -- always set to 0 and carries no meaning;
#  -- legacy field maintained for backward compatibility
#  -- The active event list
#  event PrivilegedEventFlags,
#  ...
#  }
uint8 SSPIndex = 0

j2735_v2x_msgs/PrivilegedEventFlags event