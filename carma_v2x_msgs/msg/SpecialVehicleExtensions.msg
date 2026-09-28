#
# SpecialVehicleExtensions.msg
#
# J2735 2024 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# SpecialVehicleExtensions ::= SEQUENCE {
#    vehicleAlerts  EmergencyDetails OPTIONAL,
#    description    EventDescription  OPTIONAL,
#    -- doNotUse       TrailerData OPTIONAL,  (deprecated in J2735 2024)
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

j2735_v2x_msgs/EmergencyDetails vehicle_alerts

j2735_v2x_msgs/EventDescription description