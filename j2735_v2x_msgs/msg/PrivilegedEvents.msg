#
# PrivilegedEvents.msg
#
# J2735 2016 message format.
#

#  PrivilegedEvents ::= SEQUENCE {
#  notUsed SSPindex,
#  -- always set to 0 and carries no meaning;
#  -- legacy field maintained for backward compatibility
#  -- The active event list
#  event PrivilegedEventFlags,
#  ...
#  }
uint8 ssp_index

j2735_v2x_msgs/PrivilegedEventFlags event