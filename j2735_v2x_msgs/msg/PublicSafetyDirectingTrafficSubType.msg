#
# PublicSafetyDirectingTrafficSubType.msg
#
# J2735 2016 message format.
#
# Parsed description of PublicSafetyDirectingTrafficSubType from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PublicSafetyDirectingTrafficSubType ::= BIT STRING {
#    unavailable                        (0),
#       -- Default.  
#       -- to be used if unknown or if the worker type is not otherwise identified
#    policeAndTrafficOfficers           (1), 
#       -- Law enforcement officers, including traffic control officers,
#       -- and adult school crossing guards.
#    trafficControlPersons              (2), 
#      -- Road workers with special equipment for directing traffic.
#    railroadCrossingGuards             (3), 
#      -- Railroad crossing guards who notify motorists of approaching trains 
#      -- at locations like private roads or driveways crossing train tracks 
#      -- and where automated equipment is disabled or not present. 
#    civilDefenseNationalGuardMilitaryPolice (4),
#         -- while performing their regular duties or during National
#      -- or local emergencies
#    emergencyOrganizationPersonnel     (5),
#       -- Personnel belonging to emergency response organizations such as
#       -- fire departments, hospitals, river rescue, or associated with
#       -- emergency vehicles including ambulances as designated by the 
#       -- regional authority (relating to designation of emergency vehicles)
#       -- while performing their duties.
#    highwayServiceVehiclePersonnel     (6)
#       -- Associated with tow trucks and road service vehicles.
#    } (SIZE (7, ...))

# A BIT STRING defining the presence of optional flags.
# Compare with bitwise-and
# if (sub_types & POLICE_AND_TRAFFIC_OFFICERS) etc.
# Create with bitwise-or
# sub_types = sub_types | POLICE_AND_TRAFFIC_OFFICERS
uint8 sub_types

uint8 UNAVAILABLE = 0
uint8 POLICE_AND_TRAFFIC_OFFICERS = 1
uint8 TRAFFIC_CONTROL_PERSONS = 2
uint8 RAILROAD_CROSSING_GURADS = 4
uint8 CIVIL_DEFENSE_NATIONAL_GUARD_MILITARY_POLICE = 8
uint8 EMERGENCY_ORGANIZATION_PERSONNEL = 16
uint8 HIGHWAY_SERVICE_VEHICLE_PERSONNEL = 32