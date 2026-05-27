#
# EventInfo.msg
#
# J2735 2024 message format.
#

# EventInfo ::= SEQUENCE {
#    eventID           EventIdentifier,
#    eventUpdate       MsgCount,
#    eventCancellation Activity,
#    startDateTime     DDateTime,
#    endDateTime       DDateTime        OPTIONAL,
#    eventRecurrence   SEQUENCE (SIZE(1..5, ...)) OF EventRecurrence OPTIONAL,
#    causeCode         ITISgroups,
#    subCauseCode      ITIScodes        OPTIONAL,
#    affectedVehicles  SEQUENCE (SIZE(1..10, ...)) OF VehicleGroupAffected OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_END_DATE_TIME = 1
uint8 HAS_EVENT_RECURRENCE = 2
uint8 HAS_SUB_CAUSE_CODE = 4
uint8 HAS_AFFECTED_VEHICLES = 8

j2735_v2x_msgs/EventIdentifier event_id

j2735_v2x_msgs/MsgCount event_update

j2735_v2x_msgs/Activity event_cancellation

j2735_v2x_msgs/DDateTime start_date_time

j2735_v2x_msgs/DDateTime end_date_time

j2735_v2x_msgs/EventRecurrence[] event_recurrence

uint8 EVENT_RECURRENCE_MIN_SIZE = 1
uint8 EVENT_RECURRENCE_MAX_SIZE = 5

j2735_v2x_msgs/ITISgroups cause_code

j2735_v2x_msgs/ITIScodes sub_cause_code

j2735_v2x_msgs/VehicleGroupAffected[] affected_vehicles

uint8 AFFECTED_VEHICLES_MIN_SIZE = 1
uint8 AFFECTED_VEHICLES_MAX_SIZE = 10
