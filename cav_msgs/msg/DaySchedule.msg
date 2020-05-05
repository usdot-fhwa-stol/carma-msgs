#
# DaySchedule.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# The schedule bounds of a geofence within a specific day of the week and the UTC timezone (as an offset) of the day of the week. 

# Start 
# Specifies the start of time of the schedule.
# If a ScheduleParams are not specified than this geofence is immediately active once this start time is exceeded on a given day. 
# If the ScheduleParams are specified than the start time simply bounds the activation periods.
# Start time cannot exceed midnight.
duration start

# End 
# Activation bound for this geofence. Once this point is exceeded the geofence cannot be active.
# Ent time cannot exceed midnight or be less than start time.
duration end

# UTCOffset 
# Defines the timezone as a UTC offset to be used for determining the day of the week.
duration utcoffset


