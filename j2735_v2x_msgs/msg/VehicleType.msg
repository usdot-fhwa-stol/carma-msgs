#
# VehicleType.msg
#
# J2735 2016 message format.
#

# VehicleType ::= ENUMERATED {
#    none                 (0),  -- Not Equipped, Not known or unavailable
#    unknown              (1),  -- Does not fit any other category    
#    special              (2),  -- Special use    
#    moto                 (3),  -- Motorcycle    
#    car                  (4),  -- Passenger car    
#    carOther             (5),  -- Four tire single units    
#    bus                  (6),  -- Buses    
#    axleCnt2             (7),  -- Two axle, six tire single units    
#    axleCnt3             (8),  -- Three axle, single units    
#    axleCnt4             (9),  -- Four or more axle, single unit    
#    axleCnt4Trailer      (10), -- Four or less axle, single trailer    
#    axleCnt5Trailer      (11), -- Five or less axle, single trailer    
#    axleCnt6Trailer      (12), -- Six or more axle, single trailer    
#    axleCnt5MultiTrailer (13), -- Five or less axle, multi-trailer    
#    axleCnt6MultiTrailer (14), -- Six axle, multi-trailer    
#    axleCnt7MultiTrailer (15),  -- Seven or more axle, multi-trailer    
#    ...  
#    } 

uint8 vehicle_type

uint8 NONE=0
uint8 UNKNOWN=1
uint8 SPECIAL=2
uint8 MOTO=3
uint8 CAR=4
uint8 CAR_OTHER=5
uint8 BUS=6
uint8 AXLE_CNT_2=7
uint8 AXLE_CNT_3=8
uint8 AXLE_CNT_4=9
uint8 AXLE_CNT_4_TRAILER=10
uint8 AXLE_CNT_5_TRAILER=11
uint8 AXLE_CNT_6_TRAILER=12
uint8 AXLE_CNT_5_MULTI_TRAILER=13
uint8 AXLE_CNT_6_MULTI_TRAILER=14
uint8 AXLE_CNT_7_MULTI_TRAILER=15