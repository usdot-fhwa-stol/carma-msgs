#
# ReasonCode.msg
#
# J2735 2024 message format (J3186).
#

# ReasonCode ::= ENUMERATED {
#    unknown                             (0),
#    unableToConform                     (1),
#    unwanted                            (2),
#    unableToUnderstand                  (3),
#    erroneousBehaviorDetected           (4),
#    misbehaviorAttackDetected           (5),
#    rVManeuverCancellationRequestIssued (6),
#    sessionIDConflicted                 (7),
#    ...
#    }

uint8 UNKNOWN = 0
uint8 UNABLE_TO_CONFORM = 1
uint8 UNWANTED = 2
uint8 UNABLE_TO_UNDERSTAND = 3
uint8 ERRONEOUS_BEHAVIOR_DETECTED = 4
uint8 MISBEHAVIOR_ATTACK_DETECTED = 5
uint8 RV_MANEUVER_CANCELLATION_REQUEST_ISSUED = 6
uint8 SESSION_ID_CONFLICTED = 7

uint8 reason_code
