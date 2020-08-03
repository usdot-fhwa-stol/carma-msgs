#
# Schedule.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The schedule tag supplies time-based parameters to controls. This enables temporary 
# controls to expire and cyclic controls to repeat. A schedule has an overall start and 
# end date and tim. Schedules optionally specify days of the week, hours of day, 
# and a repeat interval and duration.
#
# If a geofence needs to be active through midnight than the DayOfWeek and DaySchedule cannot be used and the start, end, and ScheduleParams should be used instead.

# Start Time in UTC seconds
# Specifies the start of time of the schedule
# If a DayOfWeek is not specified than the geofence is immediately active once past this start time.
# If the DayOfWeek is specified than the start time simply bounds the activation periods.
time start

# End Time in UTC seconds
# Specifies the end of time of the schedule
# Past this end time a geofence is never active
time end

# DayOfWeek OPTIONAL ::= SEQUENCE (SIZE(7)) OF BOOLEAN
# Specifies the days of the week where this geofence will be active.
#  -- 0=sunday, 1=monday, ...
#  -- if monday, dow = [false, true, false, false, false, false, false]
# If this is set than the DaySchedule must also be set.
bool[7] dow
bool dow_exists

# Enum for accessing dow index
uint8 SUN=0
uint8 MON=1
uint8 TUES=2
uint8 WED=3
uint8 THUR=4
uint8 FRI=5
uint8 SAT=6

# DaySchedule OPTIONAL
# A day schedule defines when the geofence will be active during the day.
# If this is set then the day of the week (dow) must also be specified.
# The time specified by the DaySchedule cannot cross midnight. 
cav_msgs/DaySchedule between
bool between_exists

# ScheduleParams OPTIONAL
# The schedule parameters define the duration and repetition of the geofence activation
# If a DayOfWeek is specified than the duration+interval must not exceed 24hrs. 
cav_msgs/ScheduleParams repeat
bool repeat_exists

