#
# SpecialVehicleExtensions.msg
#
# J2735 2016 message format.
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

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_VEHICLE_ALERTS) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_VEHICLE_ALERTS
uint16 presence_vector

uint16 HAS_VEHICLE_ALERTS = 1
uint16 HAS_DESCRIPTION = 2
uint16 HAS_TRAILERS = 4

j2735_v2x_msgs/EmergencyDetails vehicle_alerts

j2735_v2x_msgs/EventDescription description

j2735_v2x_msgs/TrailerData trailers