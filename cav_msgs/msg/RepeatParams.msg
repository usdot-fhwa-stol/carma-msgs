#
# RepeatParams.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# ...

# Offset 
# shift repetition start relative to midnight local time
builtin_interfaces/Duration offset

# Period
# minutes between successive time spans
builtin_interfaces/Duration period

# Span
# number of minutes schedule is active, must be less than the period
builtin_interfaces/Duration span
