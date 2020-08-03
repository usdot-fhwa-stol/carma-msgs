#
# ScheduleParams.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# Message describing a geofence activation period and repeating interval.
# Once a geofence becomes active it will remain active for the specified duration.
# Once the duration as elapsed the geofence will become inactive until the specified interval has elapsed from the 
# previous duration START time. 
# So if you have an interval of 30m and duration of 15m,
# then starting at t=0 you will have activation from 0-15m and 30-45m. 

# Interval
# The interval between repeats of geofence activation.
duration interval

# Duration
# The duration which a geofence will remain active for. 
# This must not exceed the specified interval.
duration duration
