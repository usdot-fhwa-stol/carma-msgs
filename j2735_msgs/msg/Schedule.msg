#
# Schedule.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The schedule tag supplies time-based parameters to controls. This enables temporary 
# controls to expire and cyclic controls to repeat. A schedule has an overall start and 
# end date and time that can be an empty string indicating forever or at least until 
# overridden when updated. Schedules optionally specify days of the week, hours of day, 
# and a repeat interval and duration along with the repeat unit of measure such as minutes or hours.

# Schedule ::= [APPLICATION 3] IMPLICIT SEQUENCE {
# 	start INTEGER (0..9223372036854775807),
# 	end INTEGER (0..9223372036854775807),
# 	dow SEQUENCE (SIZE(7)) OF BOOLEAN OPTIONAL, -- 0=sunday, 1=monday, ...
# 	between DaySchedule OPTIONAL,
# 	repeat ScheduleParams OPTIONAL
# }

# Start ::= INTEGER (0..9223372036854775807)
#  -- time when this schedule starts
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
uint64 start

# End ::= INTEGER (0..9223372036854775807)
#  -- time when this schedule ends
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
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

