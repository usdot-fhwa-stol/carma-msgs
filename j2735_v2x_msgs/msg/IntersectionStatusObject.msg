#
# IntersectionStatusObject.msg
#
# J2735 2024 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Intersection Status Object contains Advanced Traffic Controller (ATC) status information that may be sent to
# local OBUs as part of the SPAT process.

# IntersectionStatusObject ::= BIT STRING {
# manualControlIsEnabled (0),
# -- Timing reported is per programmed values, etc. but person
# -- at cabinet can manually request that certain intervals are
# -- terminated early (e.g. green).
# stopTimeIsActivated (1),
# -- And all counting/timing has stopped.
# failureFlash (2),
# -- Above to be used for any detected hardware failures,
# -- e.g. conflict monitor as well as for police flash
# preemptIsActive (3),
# signalPriorityIsActive (4),
# -- Additional states
# fixedTimeOperation (5),
# -- Schedule of signals is based on time only
# -- (i.e. the state can be calculated)
# trafficDependentOperation (6),
# -- Operation is based on different levels of traffic parameters
# -- (requests, duration of gaps or more complex parameters)
# standbyOperation (7),
# -- Controller: partially switched off or partially amber flashing
# failureMode (8),
# -- Controller has a problem or failure in operation
# off (9),
# -- Controller is switched off
# -- Related to MAP and SPAT bindings
# recentMAPmessageUpdate (10),
# -- Map revision with content changes
# recentChangeInMAPassignedLanesIDsUsed (11),
# -- Change in MAP's assigned lanes used (lane changes)
# -- Changes in the active lane list description
# noValidMAPisAvailableAtThisTime (12),
# -- MAP (and various lanes indexes) not available
# noValidSPATisAvailableAtThisTime (13)
# -- SPAT system is not working at this time
# -- Bits 14,15 reserved at this time and shall be zero
# } (SIZE(16))

uint16 intersection_status_object

# Bit flags
uint16 MANUAL_CONTROL_IS_ENABLED=1
uint16 STOP_TIME_IS_ACTIVATED=2
uint16 FAILURE_FLASH=4
uint16 PREEMPT_IS_ACTIVE=8
uint16 SIGNAL_PRIORITY_IS_ACTIVE=16
uint16 FIXED_TIME_OPERATION=32
uint16 TRAFFIC_DEPENDENT_OPERATION=64
uint16 STANDBY_OPERATION=128
uint16 FAILURE_MODE=256
uint16 OFF=512
uint16 RECENT_MAP_MESSAGE_UPDATE=1024
uint16 RECENT_CHANGE_IN_MAP_ASSIGNED_LANES_IDS_USED=2048
uint16 NO_VALID_MAP_IS_AVAILABLE_AT_THIS_TIME=4096
uint16 NO_VALID_SPAT_IS_AVAILABLE_AT_THIS_TIME=8192