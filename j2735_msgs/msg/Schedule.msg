#
# Schedule.msg
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# ...
# 

# Schedule ::= [APPLICATION 3] IMPLICIT SEQUENCE {
# 	start INTEGER (0..9223372036854775807),
# 	end INTEGER (0..9223372036854775807),
# 	dow SEQUENCE (SIZE(7)) OF BOOLEAN OPTIONAL, -- 0=sunday, 1=monday, ...
# 	between DaySchedule OPTIONAL,
# 	repeat ScheduleParams OPTIONAL
# }

# Start ::= INTEGER (0..9223372036854775807)
#  -- time when this schedule starts
#  -- in minutes TODO
uint64 start

# End ::= INTEGER (0..9223372036854775807)
#  -- time when this schedule ends
#  -- in minutes TODO
uint64 end

# DayOfWeek OPTIONAL ::= SEQUENCE (SIZE(7)) OF BOOLEAN
#  -- 0=sunday, 1=monday, ...
#  -- if monday, dow = [false, true, false, false, false, false, false]
bool[] dow
bool dow_exists

# between DaySchedule OPTIONAL
j2735_msgs/DaySchedule between
bool between_exists

# repeat ScheduleParams OPTIONAL
j2735_msgs/ScheduleParams repeat
bool repeat_exists

