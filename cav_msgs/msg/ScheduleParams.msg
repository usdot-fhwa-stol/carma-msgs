#
# ScheduleParams.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# ...

# Interval
#  -- duration between start times in seconds (min: 0)
duration interval

# Duration ::= INTEGER
#  -- duration of schedule in minutes, must be less than interval (min :0)
duration duration
