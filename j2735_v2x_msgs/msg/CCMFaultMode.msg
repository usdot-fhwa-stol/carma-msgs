#
# CCMFaultMode.msg
#
# J2735 2024 message format (J2945/6).
#

# CCMFaultMode ::= BIT STRING {
#    unavailable              (0),
#    commFault                (1),
#    radarFault               (2),
#    lidarFault               (3),
#    engingBrkCtlFault        (4),
#    serviceBrkCtlFault       (5),
#    transRetarderFault       (6),
#    engineCtlFault           (7)
#    } (SIZE (8, ...))

uint8 UNAVAILABLE = 1
uint8 COMM_FAULT = 2
uint8 RADAR_FAULT = 4
uint8 LIDAR_FAULT = 8
uint8 ENGINE_BRK_CTL_FAULT = 16
uint8 SERVICE_BRK_CTL_FAULT = 32
uint8 TRANS_RETARDER_FAULT = 64
uint8 ENGINE_CTL_FAULT = 128

uint8 ccm_fault_mode
