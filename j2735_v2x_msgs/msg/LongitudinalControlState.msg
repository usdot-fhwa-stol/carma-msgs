#
# LongitudinalControlState.msg
#
# J2735 2024 message format (J2945/6).
#

# LongitudinalControlState ::= ENUMERATED {
#    unavailable, manual, cc, acc, caccOne,
#    caccMultiple, sensorAuto, fusedAuto, manualOver,
#    ...
#    }

uint8 UNAVAILABLE = 0
uint8 MANUAL = 1
uint8 CC = 2
uint8 ACC = 3
uint8 CACC_ONE = 4
uint8 CACC_MULTIPLE = 5
uint8 SENSOR_AUTO = 6
uint8 FUSED_AUTO = 7
uint8 MANUAL_OVER = 8

uint8 longitudinal_control_state
