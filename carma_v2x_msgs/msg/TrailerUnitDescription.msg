#
# TrailerUnitDescription.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerUnitDescription ::= SEQUENCE {
#    isDolly          IsDolly, -- if false this is a trailer
#    width            VehicleWidth,   
#    length           VehicleLength,  
#    height           VehicleHeight OPTIONAL,
#    mass             TrailerMass   OPTIONAL,
#    bumperHeights    BumperHeights OPTIONAL,
#    centerOfGravity  VehicleHeight OPTIONAL,
#    -- The front pivot point of the unit
#    frontPivot       PivotPointDescription,
#    -- The rear pivot point connecting to the next element, 
#    -- if present and used (implies another unit is connected)
#    rearPivot        PivotPointDescription OPTIONAL,

#    -- Rear wheel pivot point center-line offset
#    -- measured from the rear of the above length
#    rearWheelOffset  Offset-B12 OPTIONAL,   
#                     -- the effective center-line of the wheel set

#    -- Current Position relative to the hauling Vehicle
#    positionOffset   Node-XY-24b, 
#    elevationOffset  VertOffset-B07 OPTIONAL,   
   
#    -- Past Position history relative to the hauling Vehicle
#    crumbData  	    TrailerHistoryPointList OPTIONAL, 
#    ...
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_HEIGHT) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_HEIGHT
uint32 presence_vector

uint32 HAS_HEIGHT = 1
uint32 HAS_MASS = 2
uint32 HAS_BUMPER_HEIGHTS = 4
uint32 HAS_CENTER_OF_GRAVITY = 8
uint32 HAS_REAR_PIVOT = 16
uint32 HAS_REAR_WHEEL_OFFSET = 32
uint32 HAS_ELEVATION_OFFSET = 64
uint32 HAS_CRUMB_DATA = 128

j2735_v2x_msgs/IsDolly is_dolly

carma_v2x_msgs/VehicleWidth width

carma_v2x_msgs/VehicleLength length

carma_v2x_msgs/VehicleHeight height

carma_v2x_msgs/TrailerMass mass

carma_v2x_msgs/BumperHeights bumper_heights

carma_v2x_msgs/VehicleHeight center_of_gravity

carma_v2x_msgs/PivotPointDescription front_pivot

carma_v2x_msgs/PivotPointDescription rear_pivot

carma_v2x_msgs/OffsetB12 rear_wheel_offset
  
carma_v2x_msgs/NodeXY24b position_offset

carma_v2x_msgs/VertOffsetB07 elevation_offset

carma_v2x_msgs/TrailerHistoryPointList crumb_data