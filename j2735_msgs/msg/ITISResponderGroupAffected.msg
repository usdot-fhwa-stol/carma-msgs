#
# ITISResponderGroupAffected.msg
#
# J2735 2016 message format.
#

# ResponderGroupAffected ::= ENUMERATED { 
#    emergency-vehicle-units           (9729),  -- Default, to be used when one of
#                                               -- the below does not fit better
#    federal-law-enforcement-units     (9730),  
#    state-police-units                (9731),  
#    county-police-units               (9732),  -- Hint: also sheriff response units
#    local-police-units                (9733),  
#    ambulance-units                   (9734),  
#    rescue-units                      (9735),  
#    fire-units                        (9736),  
#    hAZMAT-units                      (9737),  
#    light-tow-unit                    (9738),  
#    heavy-tow-unit                    (9739),  
#    freeway-service-patrols           (9740),  
#    transportation-response-units     (9741),  
#    private-contractor-response-units (9742),  
#    ... -- # LOCAL_CONTENT_ITIS 
#    }
#    -- These groups are used in coordinated response and staging area information
#    -- (rather than typically consumer related)

uint16 responder_group_affected

# Enumeration values for responder_group_affected
uint16 EMERGENCY_VEHICLE_UNITS=9729
uint16 FEDERAL_LAW_ENFORCEMENT_UNITS=9730
uint16 STATE_POLICE_UNITS=9731
uint16 LOCAL_POLICE_UNITS=9732
uint16 AMBULANCE_UNITS=9734
uint16 RESCUE_UNITS=9735
uint16 FIRE_UNITS=9736
uint16 HAZMAT_UNITS=9737
uint16 LIGHT_TOW_UNIT=9738
uint16 HEAVY_TOW_UNIT=9739
uint16 FREEWAY_SERVICE_PATROLS=9740
uint16 TRANSPORTATION_RESPONSE_UNITS=9741
uint16 PRIVATE_CONTRACTOR_RESPONSE_UNITS=9742