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

# ScheduleParams ::= IMPLICIT SEQUENCE {
# 	interval INTEGER, -- duration between start times in minutes
# 	duration INTEGER -- duration of schedule in minutes, must be less than interval
# }

# Interval ::= INTEGER (0..9223372036854775807)
#  -- duration between start times in minutes
uint64 interval

# Duration ::= INTEGER (0..9223372036854775807)
#  -- duration of schedule in minutes, must be less than interval
uint64 duration
