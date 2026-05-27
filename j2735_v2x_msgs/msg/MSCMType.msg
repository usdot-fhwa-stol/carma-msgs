#
# MSCMType.msg
#
# J2735 2024 message format (J3186).
#

# MSCMType ::= ENUMERATED {
#    maneuverIntent                (0),
#    maneuverRequest               (1),
#    maneuverResponse              (2),
#    maneuverReservation           (3),
#    hVManeuverCancellation        (4),
#    rVManeuverCancellationRequest (5),
#    emergencyManeuverReservation  (6),
#    maneuverExecutionStatus       (7),
#    ...
#    }

uint8 MANEUVER_INTENT = 0
uint8 MANEUVER_REQUEST = 1
uint8 MANEUVER_RESPONSE = 2
uint8 MANEUVER_RESERVATION = 3
uint8 HV_MANEUVER_CANCELLATION = 4
uint8 RV_MANEUVER_CANCELLATION_REQUEST = 5
uint8 EMERGENCY_MANEUVER_RESERVATION = 6
uint8 MANEUVER_EXECUTION_STATUS = 7

uint8 mscm_type
