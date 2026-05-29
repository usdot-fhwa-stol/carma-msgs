#
# TimeChangeDetails.msg
#
# J2735 2024 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
# timing is employed.
#
# NOTE: Time values in this message are conveyed as seconds rather than 1/10th of a second as specified by J2735
#
#
#
# TimeChangeDetails ::= SEQUENCE {
#    startTime   TimeMark           OPTIONAL,
#                -- When this future phase will start
#    minEndTime  TimeMark,
#                -- Expected shortest end time
#    maxEndTime  TimeMark           OPTIONAL,
#                -- Expected longest end time
#
#    likelyTime  TimeMark           OPTIONAL,
#                -- Best predicted value based on other data
#    confidence  TimeIntervalConfidence OPTIONAL,
#                -- Applies to above time element only
#
#    nextTime    TimeMark           OPTIONAL
#                -- A rough estimate of time when
#                -- this phase may next occur again
#                -- used to support various ECO driving power
#                -- management needs.
#    }

# Deviates from J2735 standard:
# TimeMarks in this message are conveyed as seconds rather than 1/10th seconds to avoid redundant unnecessary conversion by subscribers
# TimeMark ::= FLOAT (0-3611.1)
# -- In units of seconds from UTC time
# -- A range of 0-3599.9 covers one hour
# -- The values 3600.0-3600.9 are used when a leap second occurs
# -- The values 3601.0-3611.0 are reserved for future use
# -- 3611.1 is to be used when the value is undefined or unknown
# -- Note that this is NOT expressed in GPS time
# -- or in local time
 
float32 start_time
bool start_time_exists

float32 min_end_time

float32 max_end_time
bool max_end_time_exists

float32 likely_time
bool likely_time_exists

# TimeIntervalConfidence ::= INTEGER (0..15)
uint8 confidence
bool confidence_exists

# TimeMark ::= FLOAT (0..3611.1)
float32 next_time
bool next_time_exists

