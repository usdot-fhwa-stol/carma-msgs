#
# TimeMark.msg
#
# J2735 2024 message format.
#

# TimeMark ::= INTEGER (0..36111)
# In units of 1/10th second from UTC time
# A range of 0~35999 covers one hour
# The values 36000..36009 are used when a leap second occurs
# The values 36010..36111 are reserved

uint16 time_mark

uint16 MAX = 36111
