#
# DailySchedule.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# The schedule bounds of a geofence within a specific day of the week

# DailySchedule ::= SEQUENCE
# {
# 	begin INTEGER (0..1439), -- minutes relative to midnight local time
# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day
# }

# Begin 
# Specifies the start of time of the schedule.
# If a ScheduleParams are not specified than this geofence is immediately active once this start time is exceeded on a given day. 
# If the ScheduleParams are specified than the start time simply bounds the activation periods.
# Start time cannot exceed midnight as it is minutes relative to midnight local time
duration begin

# Duration 
# The number of active minutes, up to one day
# Activation bound for this geofence. Once this point is exceeded the geofence cannot be active.
# Ent time cannot exceed midnight or be less than start time as it
duration duration


