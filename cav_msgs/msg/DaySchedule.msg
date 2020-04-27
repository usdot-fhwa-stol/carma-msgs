#
# DaySchedule.msg
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

# Start 
#  -- offset seconds of the day (0..86399)
duration start

# End 
#  -- offset seconds of the day (0..86399)
duration end

# UTCOffset 
#  -- time offset of UTC in seconds (-43200 .. 50400)
#  -- westernmost: 43200 (-12:00) to the easternmost: 50400 (14:00)
duration utcoffset


