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

# DaySchedule ::= IMPLICIT SEQUENCE {
# 	start INTEGER (0..1439), -- minute offset of the day
# 	end INTEGER (0..1439),
# 	utcoffset INTEGER (-720..840)
# }

# Start ::= INTEGER (0..1439)
#  -- minute offset of the day
uint16 start

# End ::= INTEGER (0..1439)
#  -- minute offset of the day
uint16 end

# UTCOffset ::= INTEGER (-720 .. 840)
#  -- minute time offset of UTC 
#  -- westernmost: −720 (-12:00) to the easternmost: 840 (14:00)
int16 utcoffset


