#
# ExteriorLights.msg
#
# J2735 2016 message format.
#

# ExteriorLights ::= BIT STRING { 
#    -- All lights off is indicated by no bits set
#    lowBeamHeadlightsOn       (0), 
#    highBeamHeadlightsOn      (1), 
#    leftTurnSignalOn          (2), 
#    rightTurnSignalOn         (3), 
#    hazardSignalOn            (4), 
#    automaticLightControlOn   (5),
#    daytimeRunningLightsOn    (6), 
#    fogLightOn                (7), 
#    parkingLightsOn           (8) 
#    } (SIZE (9, ...))
uint16 exterior_lights

uint16 ALL_LIGHTS_OFF=0
uint16 LOW_BEAM_HEADLIGHTS_ON=1
uint16 HIGH_BEAM_HEADLIGHTS_ON=2
uint16 LEFT_TURN_SIGNAL_ON=4
uint16 RIGHT_TURN_SIGNAL_ON=8
uint16 HAZARD_SIGNAL_ON=16
uint16 AUTOMATIC_LIGHT_CONTROL_ON=32
uint16 DAYTIME_RUNNING_LIGHTS_ON=64
uint16 FOG_LIGHT_ON=128
uint16 PARKING_LIGHTS_ON=256
