#
# TrafficControlSchedule.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# TrafficControlSchedule ::= SEQUENCE
# {
# 	start EpochMins, -- start time required, even if it's the epoch value zero
# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
# 	dow [1] DayOfWeek OPTIONAL, 
# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
# 	repeat [3] RepeatParams OPTIONAL
# }

# start EpochMins, -- start time required, even if it's the epoch value zero
time start

# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
time end
bool end_exists

# dow [1] DayOfWeek OPTIONAL, 
j2735_v2x_msgs/DayOfWeek dow
bool dow_exists

# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
cav_msgs/DailySchedule[] between
bool between_exists

# repeat [3] RepeatParams OPTIONAL
cav_msgs/RepeatParams repeat
bool repeat_exists
