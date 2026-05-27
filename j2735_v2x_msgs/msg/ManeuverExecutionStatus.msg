#
# ManeuverExecutionStatus.msg
#
# J2735 2024 message format (J3186).
#

# ManeuverExecutionStatus ::= ENUMERATED {
#    started         (0),
#    inProgress      (1),
#    completed       (2),
#    terminated      (3),
#    ...
#    }

uint8 STARTED = 0
uint8 IN_PROGRESS = 1
uint8 COMPLETED = 2
uint8 TERMINATED = 3

uint8 maneuver_execution_status
