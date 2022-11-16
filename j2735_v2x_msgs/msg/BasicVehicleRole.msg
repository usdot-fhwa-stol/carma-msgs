#
# BasicVehicleRole.msg
#
# J2735 2016 message format.
#

# BasicVehicleRole ::= ENUMERATED {
#     -- Values used in the EU and in the US
#     basicVehicle     (0), -- Light duty passenger vehicle type
#     publicTransport  (1), -- Used in EU for Transit us
#     specialTransport (2), -- Used in EU (e.g. heavy load)
#     dangerousGoods   (3), -- Used in EU for any HAZMAT
#     roadWork         (4), -- Used in EU for State and Local DOT uses
#     roadRescue       (5), -- Used in EU and in the US to include tow trucks.
#     emergency        (6), -- Used in EU for Police, Fire and Ambulance units
#     safetyCar        (7), -- Used in EU for Escort vehicles
#     -- Begin US unique numbering
#     none-unknown     (8), -- added to follow current SAE style guidelines
#     truck            (9), -- Heavy trucks with additional BSM rights and obligations
#     motorcycle      (10), --
#     roadSideSource  (11), -- For infrastructure generated calls such as
#                           -- fire house, rail infrastructure, roadwork site, etc.
#     police          (12), --
#     fire            (13), --
#     ambulance       (14), -- (does not include private para-transit etc.)
#     dot             (15), -- all roadwork vehicles
#     transit         (16), -- all transit vehicles 
#     slowMoving      (17), -- to also include oversize etc.
#     stopNgo         (18), -- to include trash trucks, school buses and others
#                           -- that routinely disturb the free flow of traffic
#     cyclist         (19), --
#     pedestrian      (20), -- also includes those with mobility limitations
#     nonMotorized    (21), -- other, horse drawn, etc.
#     military        (22), --
#     ...   
#     }  

uint8 basic_vehicle_role

# Enumeration values for basic_vehicle_role
uint8 BASIC_VEHICLE=0
uint8 PUBLIC_TRANSPORT=1
uint8 SPECIAL_TRANSPORT=2
uint8 DANGEROUS_GOODS=3
uint8 ROAD_WORK=4
uint8 ROAD_RESCUE=5
uint8 EMERGENCY=6
uint8 SAFETY_CAR=7
uint8 NONE_UNKNOWN=8
uint8 TRUCK=9
uint8 MOTORCYCLE=10
uint8 ROAD_SIDE_SOURCE=11
uint8 POLICE=12
uint8 FIRE=13
uint8 AMBULANCE=14
uint8 DOT=15
uint8 TRANSIT=16
uint8 SLOW_MOVING=17
uint8 STOP_N_GO=18
uint8 CYCLIST=19
uint8 PEDESTRIAN=20
uint8 NON_MOTORIZED=21
uint8 MILITARY=22