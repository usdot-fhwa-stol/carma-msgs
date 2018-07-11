#
# TimeChangeDetails.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
# timing is employed.
#
#
# TimeChangeDetails ::= SEQUENCE {
# startTime TimeMark OPTIONAL,
# -- When this phase 1st started
# minEndTime TimeMark,
# -- Expected shortest end time
# maxEndTime TimeMark OPTIONAL,
# -- Expected longest end time
# likelyTime TimeMark OPTIONAL,
# -- Best predicted value based on other data
# confidence TimeIntervalConfidence OPTIONAL,
# -- Applies to above time element only
# nextTime TimeMark OPTIONAL
# -- A rough estimate of time when
# -- this phase may next occur again
# -- used to support various ECO driving power
# -- management needs.
# }

# TimeMark ::= INTEGER (0..36001)
# -- Tenths of a second in the current or next hour
# -- In units of 1/10th second from UTC time
# -- A range of 0~36000 covers one hour
# -- The values 35991..35999 are used when a leap second occurs
# -- The value 36000 is used to indicate time >3600 seconds
# -- 36001 is to be used when value undefined or unknown
# -- Note that this is NOT expressed in GPS time
# -- or in local time
uint16 start_time
uint16 min_end_time
uint16 max_end_time
uint16 likely_time

#TimeIntervalConfidence ::= INTEGER (0..15)
uint8 confidence

# TimeMark ::= INTEGER (0..36001)
uint16 next_time

