# LaneChangeStatus.msg
#
# Announces the status of planning of a lane change maneuver, which may or may not involve other vehicles.
# If no other vehicle is involved then it should transition from PLAN_SENT to TIMED_OUT.
#

uint8 status

# enumeration values for status:
uint8   Cooperative_Lane_Change_Request_Sent=1
uint8   Cooperative_Lane_Change_Request_Received=2
uint8   Cooperative_Lane_Change_Request_Accepted=3
uint8   Cooperative_Lane_Change_Request_Rejected=4
uint8   Cooperative_Lane_Change_Rensponse_Sent=5
uint8   Cooperative_Lane_Change_Acceptance_received=6
uint8   Cooperative_Lane_Change_Rejection_received=7
uint8   Cooperative_Lane_Change_Other_Resposnse_received=8
uint8   Cooperative_Lane_Change_Successfully_Planned=9
uint8   Cooperative_Lane_Change_Timed_Out=10
