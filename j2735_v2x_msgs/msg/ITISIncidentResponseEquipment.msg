#
# ITISIncidentResponseEquipment.msg
#
# J2735 2016 message format.
#

uint16 incident_response_equipment

# Enumeration values for incident_response_equipment included below

# IncidentResponseEquipment ::= ENUMERATED { 
#    ground-fire-suppression          (9985),   
#    heavy-ground-equipment           (9986),   
#    aircraft                         (9988),   
#    marine-equipment                 (9989),   
#    support-equipment                (9990),   
#    medical-rescue-unit              (9991),   
#    other                            (9993),   -- Depreciated by fire standards, do not
#                                               -- 
#    ground-fire-suppression-other    (9994),   
#    engine                           (9995),   
#    truck-or-aerial                  (9996),   
#    quint                            (9997),   -- A five-function type of fire 
#                                               -- apparatus. The units in the 
#                                               -- movie Backdraft were quints
#    tanker-pumper-combination        (9998),   
#    brush-truck                      (10000),  
#    aircraft-rescue-firefighting     (10001),  
#    heavy-ground-equipment-other     (10004),  
#    dozer-or-plow                    (10005),  
#    tractor                          (10006),  
#    tanker-or-tender                 (10008),  
#    aircraft-other                   (10024),  
#    aircraft-fixed-wing-tanker       (10025),  
#    helitanker                       (10026),  
#    helicopter                       (10027),  
#    marine-equipment-other           (10034),  
#    fire-boat-with-pump              (10035),  
#    boat-no-pump                     (10036),  
#    support-apparatus-other          (10044),  
#    breathing-apparatus-support      (10045),  
#    light-and-air-unit               (10046),  
#    medical-rescue-unit-other        (10054),  
#    rescue-unit                      (10055),  
#    urban-search-rescue-unit         (10056),  
#    high-angle-rescue                (10057),  
#    crash-fire-rescue                (10058),  
#    bLS-unit                         (10059),  
#    aLS-unit                         (10060),  
#    mobile-command-post              (10075),  -- Depreciated, do not use
#    chief-officer-car                (10076),  
#    hAZMAT-unit                      (10077),  
#    type-i-hand-crew                 (10078),  
#    type-ii-hand-crew                (10079),  
#    privately-owned-vehicle          (10083),  -- (Often found in volunteer fire teams)
#    other-apparatus-resource         (10084),  -- (Remapped from fire code zero)
#    ambulance                        (10085),  
#    bomb-squad-van                   (10086),  
#    combine-harvester                (10087),  
#    construction-vehicle             (10088),  
#    farm-tractor                     (10089),  
#    grass-cutting-machines           (10090),  
#    hAZMAT-containment-tow           (10091),  
#    heavy-tow                        (10092),  
#    light-tow                        (10094),  
#    flatbed-tow                      (10114), 
#    hedge-cutting-machines           (10093),  
#    mobile-crane                     (10095),  
#    refuse-collection-vehicle        (10096),  
#    resurfacing-vehicle              (10097),  
#    road-sweeper                     (10098),  
#    roadside-litter-collection-crews (10099),  
#    salvage-vehicle                  (10100),  
#    sand-truck                       (10101),  
#    snowplow                         (10102),  
#    steam-roller                     (10103),  
#    swat-team-van                    (10104),  
#    track-laying-vehicle             (10105),  
#    unknown-vehicle                  (10106),  
#    white-lining-vehicle             (10107),  -- Consider using Roadwork "road marking
#                                               -- operations" unless objective is to
#                                               -- refer to the specific vehicle of this
#                                               -- type.  Alternative Rendering: line
#                                               -- painting vehicle
#    dump-truck                       (10108),  
#    supervisor-vehicle               (10109),  
#    snow-blower                      (10110),  
#    rotary-snow-blower               (10111),  
#    road-grader                      (10112),  -- Alternative term: motor grader
#    steam-truck                      (10113),  -- A special truck that thaws culverts 
#                                               -- and storm drains
#    ... -- # LOCAL_CONTENT_ITIS 
#    }

uint16 GROUND_FIRE_SUPPRESSION=9985
uint16 HEAVY_GROUND_EQUIPMENT=9986
uint16 AIRCRAFT=9988
uint16 MARINE_EQUIPMENT=9989
uint16 SUPPORT_EQUIPMENT=9990
uint16 MEDICAL_RESCUE_UNIT=9991
uint16 OTHER=9993
uint16 GROUND_FIRE_SUPPRESSION_OTHER=9994
uint16 ENGINE=9995
uint16 TRUCK_OR_AERIAL=9996
uint16 QUINT=9997

uint16 TANKER_PUMPER_COMBINATION=9998
uint16 BRUSH_TRUCK=10000
uint16 AIRCRAFT_RESCUE_FIREFIGHTING=10001
uint16 HEAVY_GROUND_EQUIPMENT_OTHER=10004
uint16 DOZER_OR_PLOW=10005
uint16 TRACTOR=10006
uint16 TANKER_OR_TENDER=10008
uint16 AIRCRAFT_OTHER=10024
uint16 AIRCRAFT_FIXED_WING_TANKER=10025
uint16 HELITANKER=10026
uint16 HELICOPTER=10027
uint16 MARINE_EQUIPMENT_OTHER=10034
uint16 FIRE_BOAT_WITH_PUMP=10035
uint16 BOAT_NO_PUMP=10036

uint16 SUPPORT_APPARATUS_OTHER=10044
uint16 BREATHING_APPARATUS_SUPPORT=10045
uint16 LIGHT_AND_AIR_UNIT=10046
uint16 MEDICAL_RESCUE_UNIT_OTHER=10054
uint16 RESCUE_UNIT=10055
uint16 URBAN_SEARCH_RESCUE_UNIT=10056
uint16 HIGH_ANGLE_RESCUE=10057
uint16 CRASH_FIRE_RESCUE=10058
uint16 BLS_UNIT=10059
uint16 ALS_UNIT=10060
uint16 MOBILE_COMMAND_POST=10075
uint16 CHIEF_OFFICER_CAR=10076
uint16 HAZMAT_UNIT=10077
uint16 TYPE_I_HAND_CREW=10078

uint16 TYPE_II_HAND_CREW=10079
uint16 PRIVATELY_OWNED_VEHICLE=10083
uint16 OTHER_APPARATUS_RESOURCE=10084
uint16 AMBULANCE=10085
uint16 BOMB_SQUAD_VAN=10086
uint16 COMBINE_HARVESTER=10087
uint16 CONSTRUCTION_VEHICLE=10088
uint16 FARM_TRACTOR=10089
uint16 GRASS_CUTTING_MACHINES=10090
uint16 HAZMAT_CONTAINMENT_TOW=10091
uint16 HEAVY_TOW=10092
uint16 LIGHT_TOW=10094
uint16 FLATBED_TOW=10114
uint16 HEDGE_CUTTING_MACHINES=10093
uint16 MOBILE_CRANE=10095

uint16 REFUSE_COLLECTION_VEHICLE=10096
uint16 RESURFACING_VEHICLE=10097
uint16 ROAD_SWEEPER=10098
uint16 ROADSIDE_LITTER_COLLECTION_CREWS=10099
uint16 SALVAGE_VEHICLE=10100
uint16 SAND_TRUCK=10101
uint16 SNOWPLOW=10102
uint16 STEAM_ROLLER=10103
uint16 SWAT_TEAM_VAN=10104
uint16 TRACK_LAYING_VEHICLE=10105
uint16 UNKNOWN_VEHICLE=10106
uint16 WHITE_LINING_VEHICLE=10107

uint16 DUMP_TRUCK=10108
uint16 SUPERVISOR_VEHICLE=10109
uint16 SNOW_BLOWER=10110
uint16 ROTARY_SNOW_BLOWER=10111
uint16 ROAD_GRADER=10112
uint16 STEAM_TRUCK=10113