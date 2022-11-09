#
# ITISVehicleGroupAffected.msg
#
# J2735 2016 message format.
#

# VehicleGroupAffected ::= ENUMERATED { 
#    all-vehicles                               (9217),  
#    bicycles                                   (9218),  
#    motorcycles                                (9219),  -- to include mopeds as well
#    cars                                       (9220),  -- (remapped from ERM value of
#                                                        -- zero)
#    light-vehicles                             (9221),  
#    cars-and-light-vehicles                    (9222),  
#    cars-with-trailers                         (9223),  
#    cars-with-recreational-trailers            (9224),  
#    vehicles-with-trailers                     (9225),  
#    heavy-vehicles                             (9226),  
#    trucks                                     (9227),  
#    buses                                      (9228),  
#    articulated-buses                          (9229),  
#    school-buses                               (9230),  
#    vehicles-with-semi-trailers                (9231),  
#    vehicles-with-double-trailers              (9232),  -- Alternative Rendering:  
#                                                        -- western doubles
#    high-profile-vehicles                      (9233),  
#    wide-vehicles                              (9234),  
#    long-vehicles                              (9235),  
#    hazardous-loads                            (9236),  
#    exceptional-loads                          (9237),  
#    abnormal-loads                             (9238),  
#    convoys                                    (9239),  
#    maintenance-vehicles                       (9240),  
#    delivery-vehicles                          (9241),  
#    vehicles-with-even-numbered-license-plates (9242),  
#    vehicles-with-odd-numbered-license-plates  (9243),  
#    vehicles-with-parking-permits              (9244),  
#    vehicles-with-catalytic-converters         (9245),  
#    vehicles-without-catalytic-converters      (9246),  
#    gas-powered-vehicles                       (9247),  
#    diesel-powered-vehicles                    (9248),  
#    lPG-vehicles                               (9249),  -- The L is lower case here
#    military-convoys                           (9250),  
#    military-vehicles                          (9251),  
#    ... -- # LOCAL_CONTENT_ITIS 
#    }
#    -- Classification of vehicles and types of transport

uint16 vehicle_group_affected

# Enumeration values for vehicle_group_affected
uint16 ALL_VEHICLES=9217
uint16 BICYCLES=9218
uint16 MOTORCYCLES=9219
uint16 CARS=9220
uint16 LIGHT_VEHICLES=9221
uint16 CARS_AND_LIGHT_VEHICLES=9222
uint16 CARS_WITH_TRAILERS=9223
uint16 CARS_WITH_RECREATIONAL_TRAILERS=9224
uint16 VEHICLES_WITH_TRAILERS=9225
uint16 HEAVY_VEHICLES=9226
uint16 TRUCKS=9227
uint16 BUSES=9228
uint16 ARTICULATED_BUSES=9229
uint16 SCHOOL_BUSES=9230
uint16 VEHICLES_WITH_SEMI_TRAILERS=9231
uint16 VEHICLES_WITH_DOUBLE_TRAILERS=9232
uint16 HIGH_PROFILE_VEHICLES=9233
uint16 WIDE_VEHICLES=9234
uint16 LONG_VEHICLES=9235
uint16 HAZARDOUS_LOADS=9236
uint16 EXCEPTIONAL_LOADS=9237
uint16 ABNORMAL_LOADS=9238
uint16 CONVOYS=9239
uint16 MAINTENANCE_VEHICLES=9240
uint16 DELIVERY_VEHICLES=9241
uint16 VEHICLES_WITH_EVEN_NUMBERED_LICENSE_PLATES=9242
uint16 VEHICLES_WITH_ODD_NUMBERED_LICENSE_PLATES=9243
uint16 VEHICLES_WITH_PARKING_PERMITS=9244
uint16 VEHICLES_WITH_CATALYTIC_CONVERTERS=9245
uint16 VEHICLES_WITHOUT_CATALYTIC_CONVERTERS=9246
uint16 GAS_POWERED_VEHICLES=9248
uint16 LPG_VEHICLES=9249
uint16 MILITARY_CONVOYS=9250
uint16 MILITARY_VEHICLES=9251