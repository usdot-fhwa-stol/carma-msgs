#
# SpecialVehicleExtensions.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# SpecialVehicleExtensions ::= SEQUENCE {
#    -- The content below requires SSP permissions to transmit
# 
#    -- The entire EVA message has been reduced to these items
#    vehicleAlerts  EmergencyDetails OPTIONAL,
#    -- Description or Direction from an emergency vehicle
#    description    EventDescription  OPTIONAL, -- short ITIS description
#    
#    -- Trailers for both passenger vehicles and heavy trucks
#    trailers       TrailerData OPTIONAL,
# 
#    -- HAZMAT and Cargo details to be added in a future revision
# 
#    -- Wideload, oversized load to be added in a future revision
# 
#    ...
#    }

j2735_v2x_msgs/EmergencyDetails vehicle_alerts
bool vehicle_alerts_available

j2735_v2x_msgs/EventDescription description
bool description_available

j2735_v2x_msgs/TrailerData trailers
bool trailers_available