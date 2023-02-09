#
# PrivilegedEventFlags.msg
#
# J2735 2016 message format.
#

# PrivilegedEventFlags ::= BIT STRING {
#    -- These values require a suitable SSP to be sent
#    peUnavailable                (0), -- Not Equipped or unavailable
#    peEmergencyResponse          (1),
#       -- The vehicle is a properly authorized public safety vehicle, 
#       -- is engaged in a service call, and is currently moving 
#       -- or is within the roadway.  Note that lights and sirens 
#       -- may not be evident during any given response call   
# 
#    -- Emergency and Non Emergency Lights related
#    peEmergencyLightsActive      (2),
#    peEmergencySoundActive       (3),
#    peNonEmergencyLightsActive   (4),
#    peNonEmergencySoundActive    (5)
# 
#    -- this list is likely to grow with further peer review
#    } (SIZE (16))

uint16 privileged_event_flags

# Bit flags
uint16 PE_UNAVAILABLE = 1
uint16 PE_EMERGENCY_RESPONSE = 2
uint16 PE_EMERGENCY_LIGHTS_ACTIVE = 4
uint16 PE_EMERGENCY_SOUND_ACTIVE = 8
uint16 PE_NON_EMERGENCY_LIGHTS_ACTIVE = 16
uint16 PE_NON_EMERGENCY_SOUND_ACTIVE = 32
