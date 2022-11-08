#
# DisabledVehicle.msg
#
# J2735 2016 message format.
#
# @version 0.1
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

j2735_v2x_msgs/ITIScodes status_details

j2735_v2x_msgs/ITISGenericLocations location_details
bool location_details_exists