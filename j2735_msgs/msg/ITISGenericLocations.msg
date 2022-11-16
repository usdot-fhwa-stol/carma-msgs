#
# ITISGenericLocations.msg
#
# J2735 2016 message format.
#

uint16 generic_locations

# Enumeration values for generic_locations

# GenericLocations ::= ENUMERATED  { 
#    -- Road Related
#    on-bridges                  (7937),  -- Not to be used as the default for this
#                                         -- category
#    in-tunnels                  (7938),  
#    entering-or-leaving-tunnels (7939),  
#    on-ramps                    (7940),  
#    in-road-construction-area   (7941),  
#    around-a-curve              (7942),  
#    on-curve                    (8026),   
#    on-tracks                   (8009),   
#    in-street                   (8025),  -- As in in-street pad crossing
#    shoulder                    (8027),   
#    on-minor-roads              (7943),  
#    in-the-opposing-lanes       (7944),  
#    adjacent-to-roadway         (7945),  
#    across-tracks               (8024),   
#    on-bend                     (7946),  
#    intersection                (8032),   
#    entire-intersection         (7947),  
#    in-the-median               (7948),  
#    moved-to-side-of-road       (7949),  
#    moved-to-shoulder           (7950),  
#    on-the-roadway              (7951),  -- Use generic locations/groups affected to
#                                         -- make other such phrases
#    dip                         (8010),   
#    traffic-circle              (8011),  -- Used for W2-6 graphic as well. Alt term:
#                                         -- roundabout
#    crossover                   (8028),  
#    cross-road                  (8029),  -- Also used for W2-1 Note that in some uses
#                                         -- this is one word
#    side-road                   (8030),  -- Do not used for W2-2R and W2-2L
#    to                          (8014),   
#    by                          (8015),   
#    through                     (8016),   
#    area-of                     (8017),  -- Also area
#    under                       (8018),     
#    over                        (8019),   
#    from                        (8020),   
#    approaching                 (8021),   
#    entering-at                 (8022),  -- Alt form: Entrance
#    exiting-at                  (8023), 
#    -- Terrain & Geography
#    in-shaded-areas             (7952),  
#    in-low-lying-areas          (7953),  
#    in-the-downtown-area        (7954),  
#    in-the-inner-city-area      (7955),  
#    in-parts                    (7956),  
#    in-some-places              (7957),  
#    in-the-ditch                (7958),  
#    in-the-valley               (7959),  
#    on-hill-top                 (7960),  
#    near-the-foothills          (7961),  
#    at-high-altitudes           (7962),  
#    near-the-lake               (7963),  
#    near-the-shore              (7964),  
#    nearby-basin                (8008),  
#    over-the-crest-of-a-hill    (7965),  
#    other-than-on-the-roadway   (7966),  
#    near-the-beach              (7967),  
#    near-beach-access-point     (7968),  
#    mountain-pass               (8006),  
#    lower-level                 (7969),  
#    upper-level                 (7970),  
#    -- Transit Travel, Air Travel and Places
#    airport                     (7971),  
#    concourse                   (7972),  
#    gate                        (7973),  
#    baggage-claim               (7974),  
#    customs-point               (7975),  
#    reservation-center          (8007),  
#    station                     (7976),  
#    platform                    (7977),  -- Alternative Rendering:  track
#    dock                        (7978),  
#    depot                       (7979), 
#    ev-charging-point           (7980),  
#    information-welcome-point   (7981),  -- Use for Tourist Information as well (D9-10)
#    at-rest-area                (7982),  
#    at-service-area             (7983),  
#    at-weigh-station            (7984),  
#    roadside-park               (8033),  
#    picnic-areas                (7985),  
#    rest-area                   (7986),  
#    service-stations            (7987),  
#    toilets                     (7988),  -- Note also rest rooms in structures
#    bus-stop                    (8031),  
#    park-and-ride-lot           (8012),  -- Not to be used as a mode of travel
#    -- Direction of Travel
#    on-the-right                (7989),  
#    on-the-left                 (7990),  
#    in-the-center               (7991),  
#    in-the-opposite-direction   (7992),  
#    cross-traffic               (7993),  
#    northbound-traffic          (7994),  
#    eastbound-traffic           (7995),  
#    southbound-traffic          (7996),  
#    westbound-traffic           (7997),  
#    -- Compass Points
#    north                       (7998),  
#    south                       (7999),  
#    east                        (8000),  
#    west                        (8001),  
#    northeast                   (8002),  
#    northwest                   (8003),  
#    southeast                   (8004),  
#    southwest                   (8005),  
#    ... -- # LOCAL_CONTENT_ITIS 
#    }

uint16 ON_BRIDGES=7937
uint16 IN_TUNNELS=7938
uint16 ENTERING_OR_LEAVING_TUNNELS=7939
uint16 ON_RAMPS=7940
uint16 IN_ROAD_CONSTRUCTION_AREA=7941
uint16 AROUND_A_CURVE=7942
uint16 ON_CURVE=8026
uint16 ON_TRACKS=8009
uint16 IN_STREET=8025
uint16 SHOULDER=8027
uint16 ON_MINOR_ROADS=7943

uint16 ADJACENT_TO_ROADWAY=7945
uint16 ACROSS_TRACKS=8024
uint16 ON_BEND=7946
uint16 INTERSECTION=8032
uint16 ENTIRE_INTERSECTION=7947
uint16 IN_THE_MEDIAN=7948
uint16 MOVED_TO_SIDE_OF_ROAD=7949
uint16 MOVED_TO_SHOULDER=7950
uint16 ON_THE_ROADWAY=7951
uint16 DIP=8010
uint16 TRAFFIC_CIRCLE=8011 

uint16 CROSSOVER=8028
uint16 CROSS_ROAD=8029
uint16 SIDE_ROAD=8030
uint16 TO=8014
uint16 BY=8015
uint16 THROUGH=8016
uint16 AREA_OF=8017
uint16 UNDER=8018
uint16 OVER=8019
uint16 FROM=8020
uint16 APPROACHING=8021
uint16 ENTERING_AT=8022
uint16 EXITING_AT=8023

uint16 IN_SHADED_AREAS=7952
uint16 IN_LOW_LYING_AREAS=7953
uint16 IN_THE_DOWNTOWN_AREA=7954
uint16 IN_THE_INNER_CITY_AREA=7955
uint16 IN_PARTS=7956
uint16 IN_SOME_PLACES=7957
uint16 IN_THE_DITCH=7958
uint16 IN_THE_VALLEY=7959
uint16 ON_HILL_TOP=7960
uint16 NEAR_THE_FOOTHILS=7961
uint16 AT_HIGH_ALTITUDES=7962
uint16 NEAR_THE_LAKE=7963
uint16 NEAR_THE_SHORE=7964
uint16 NEARBY_BASIN=8008
uint16 OVER_THE_CREST_OF_A_HILL=7965 

uint16 OTHER_THAN_ON_THE_ROADWAY=7966
uint16 NEAR_THE_BEACH=7967
uint16 NEAR_BEACH_ACCESS_POINT=7968
uint16 MOUNTAIN_PASS=8006
uint16 LOWER_LEVEL=7969
uint16 UPPER_LEVEL=7970
uint16 AIRPORT=7971
uint16 CONCOURSE=7972
uint16 GATE=7973
uint16 BAGGAGE_CLAIM=7974
uint16 CUSTOMS_POINT=7975
uint16 RESERVATION_CENTER=8007
uint16 STATION=7976
uint16 PLATFORM=7977
uint16 DOCK=7978
uint16 DEPOT=7979

uint16 EV_CHARGING_POINT=7980
uint16 INFORMATION_WELCOME_POINT=7981
uint16 AT_REST_AREA=7982
uint16 AT_SERVICE_AREA=7983
uint16 AT_WEIGH_STATION=7984
uint16 ROADSIDE_PARK=8003
uint16 PICNIC_AREAS=7985
uint16 REST_AREA=7986
uint16 SERVICE_STATIONS=7987
uint16 TOILETS=7988
uint16 BUS_STOP=8031
uint16 PARK_AND_RIDE_LOT=8012
uint16 ON_THE_RIGHT=7989
uint16 ON_THE_LEFT=7990
uint16 IN_THE_CENTER=7991
uint16 IN_THE_OPPOSITE_DIRECTION=7992
uint16 CROSS_TRAFFIC=7993
uint16 NORTHBOUND_TRAFFIC=7994

uint16 EASTBOUND_TRAFFIC=7995
uint16 SOUTHBOUND_TRAFFIC=7996
uint16 WESTBOUND_TRAFFIC=7997
uint16 NORTH=7998
uint16 SOUTH=7999
uint16 EAST=8000
uint16 WEST=8001
uint16 NORTHEAST=8002
uint16 NORTHWEST=8003
uint16 SOUTHEAST=8004
uint16 SOUTHWEST=8005
