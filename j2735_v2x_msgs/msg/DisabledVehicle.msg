#
# DisabledVehicle.msg
#
# J2735 2016 message format.
#

# DisabledVehicle ::= SEQUENCE {
#    statusDetails     ITIS.ITIScodes(523..541),   
#                      -- Codes 532 to 541, as taken from J2540:
#                      -- Disabled, etc.
#                        -- stalled-vehicle (532),
#                        -- abandoned-vehicle (533),
#                        -- disabled-vehicle (534),
#                        -- disabled-truck (535),
#                        -- disabled-semi-trailer (536), -^- Alt: disabled
#                      -- tractor-trailer
#                        -- disabled-bus (537),
#                        -- disabled-train (538),
#                        -- vehicle-spun-out (539),
#                        -- vehicle-on-fire (540),
#                        -- vehicle-in-water (541),
#    locationDetails   ITIS.GenericLocations   OPTIONAL, 
#    ...       
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_LOCATION_DETAILS) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_LOCATION_DETAILS
uint16 presence_vector

uint16 HAS_LOCATION_DETAILS = 1

j2735_v2x_msgs/ITIScodes status_details
uint16 STATUS_DETAILS_MIN = 532
uint16 STATUS_DETAILS_MAX = 541

j2735_v2x_msgs/ITISGenericLocations location_details
