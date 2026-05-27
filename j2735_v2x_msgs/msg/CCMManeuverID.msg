#
# ManeuverID.msg
#
# J2735 2024 message format (J2945/6).
#

# ManeuverID ::= INTEGER {
#    unavailable                      (0),
#    stayAtRestManCtl                 (1), -- Stay at rest with manual control      
#    stayAtRestAutoLonCtl             (2), -- Stay at rest with automatic
#                                          --   longitudinal control
#    autoSpdCtlFollowRefTrafAccel     (4), -- Automatic speed control following a 
#                                          --   reference trajectory b 
#                                          --   acceleration in response to speed 
#                                          --   limit change)
#    transManToAutoSpdCtl             (5), -- Transition from manual to automatic 
#                                          --   speed control 
#    stringForm                       (6), -- Platoon forming - following the 
#                                          --   speed of the preceding vehicle in 
#                                          --   the platoon or CCM string, but 
#                                          --   not yet at the desired distance 
#                                          --   (speed tracking)
#    autoJoinString                   (7), -- Automatic joining within a platoon
#                                          --   or CCM string (speed & distance 
#                                          --   control to desired distance)
#    autoCtl                          (8), -- Automatic platooning or CCM 
#                                          --   control (at cruise speed - no
#                                          --   other maneuver)
#    increaseGapAutoCtl               (9), -- Increasing gap under automatic 
#                                          --   control (within a platoon or CCM 
#                                          --   string) to a specified distance 
#                                          --   with respect to preceding vehicle
#    leftLnChgEndString              (10), -- Left-lane-changing to the end of a 
#                                          --   platoon or CCM string
#    rightLnChgEndString             (11), -- Right-lane-changing to the end of a 
#                                          --   platoon or CCM string
#    virtualGapIncDiffLane           (12), -- Virtual gap increase to specified 
#                                          --   distance from current distance in 
#                                          --   a different lane
#    virtualGapRedDiffLane           (13), -- Virtual gap reduction to specified 
#                                          --   distance from current distance in 
#                                          --   a different lane
#    emgcyIncInterVehDistToStop      (14), -- Emergency increase to longer inter-
#                                          --   vehicle distance to stop (due to 
#                                          --   an incurable fault)
#    vehMrgToStringFrmOnramp         (15), -- Vehicle merging into a platoon or 
#                                          --   CCM string from on-ramp
#    leftLnChgJoinString             (16), -- Left-lane-changing to join a 
#                                          --   platoon or CCM string
#    rightLnChgJoinString            (17), -- Right-lane-changing to join a 
#                                          --   platoon or CCM string
#    collisionAvoidLnChgOnly         (19), -- Collision avoidance by lane 
#                                          --   changing only
#    collisionAvoidLnChgWthSpdRed    (20), -- Collision avoidance by lane 
#                                          --   changing and speed reduction
#    collisionAvoidEmgcyStp          (21), -- Collision avoidance by emergency 
#                                          --   stop
#    autoDecelFollowSpdProfile       (28), -- Automatic deceleration following 
#                                          --   designed speed profile (in 
#                                          --   response to speed limit change)
#    stoppingClosedloopVehFollowCtl  (31), -- Stopping by closed-loop vehicle 
#                                          --   following control
#    stoppngOpenloopDecelCmd         (32), -- Stopping by open-loop deceleration 
#                                          --   command
#    brakeToStopManCtl               (33), -- Brake to stop in manual mode
#    incGapContString                (34), -- Gradually increasing gap to longer 
#                                          --   desired distance but continue 
#                                          --   platoon or CCM control (in 
#                                          --   response to a fault)
#    incGapRedSpdToStp               (35), -- Gradually increasing gap and 
#                                          --   reducing speed to stop (in 
#                                          --   response to a fault)
#    cruiseCtl                       (36), -- Cruise control (speed regulation, 
#                                          --   with no forward target vehicle 
#                                          --   to track)
#    adapCruiseCtl                   (41), -- Adaptive cruise control (vehicle 
#                                          --   following control without 
#                                          --   communication)
#    coopAdapCruiseCtl               (42), -- Cooperative adaptive cruise control 
#                                          --   (vehicle following control using 
#                                          --   forward ranging sensor and 
#                                          --   communication data)
#    manCtl                          (46), -- Manual control (including all 
#                                          --   maneuvers)
#    coordAutoBrkForStringWthSvcBrkEngBrk (47), -- Coordinated automatic braking 
#                                               --   for a platoon or CCM string 
#                                               --   with both service brake and 
#                                               --   engine brake if applicable
#    emgcyBrkForStringOnePlusVehWthSvcBrk (48)  -- Emergency braking for a 
#                                               --   platoon or CCM string: at 
#                                               --   least one of the vehicles 
#                                               --   used service brake for
#                                               --   handling emergency 
#                                               --   situations
#     } (0..255)

uint8 UNAVAILABLE = 0
uint8 STAY_AT_REST_MAN_CTL = 1
uint8 STAY_AT_REST_AUTO_LON_CTL = 2
uint8 AUTO_SPD_CTL_FOLLOW_REF_TRAF_ACCEL = 4
uint8 TRANS_MAN_TO_AUTO_SPD_CTL = 5
uint8 STRING_FORM = 6
uint8 AUTO_JOIN_STRING = 7
uint8 AUTO_CTL = 8
uint8 INCREASE_GAP_AUTO_CTL = 9
uint8 LEFT_LN_CHG_END_STRING = 10
uint8 RIGHT_LN_CHG_END_STRING = 11
uint8 VIRTUAL_GAP_INC_DIFF_LANE = 12
uint8 VIRTUAL_GAP_RED_DIFF_LANE = 13
uint8 EMGCY_INC_INTER_VEH_DIST_TO_STOP = 14
uint8 VEH_MRG_TO_STRING_FRM_ONRAMP = 15
uint8 LEFT_LN_CHG_JOIN_STRING = 16
uint8 RIGHT_LN_CHG_JOIN_STRING = 17
uint8 COLLISION_AVOID_LN_CHG_ONLY = 19
uint8 COLLISION_AVOID_LN_CHG_WTH_SPD_RED = 20
uint8 COLLISION_AVOID_EMGCY_STP = 21
uint8 AUTO_DECEL_FOLLOW_SPD_PROFILE = 28
uint8 STOPPING_CLOSEDLOOP_VEH_FOLLOW_CTL = 31
uint8 STOPPNG_OPENLOOP_DECEL_CMD = 32
uint8 BRAKE_TO_STOP_MAN_CTL = 33
uint8 INC_GAP_CONT_STRING = 34
uint8 INC_GAP_RED_SPD_TO_STP = 35
uint8 CRUISE_CTL = 36
uint8 ADAP_CRUISE_CTL = 41
uint8 COOP_ADAP_CRUISE_CTL = 42
uint8 MAN_CTL = 46
uint8 COORD_AUTO_BRK_FOR_STRING_WTH_SVC_BRK_ENG_BRK = 47
uint8 EMGCY_BRK_FOR_STRING_ONE_PLUS_VEH_WTH_SVC_BRK = 48

uint8 maneuver_id
