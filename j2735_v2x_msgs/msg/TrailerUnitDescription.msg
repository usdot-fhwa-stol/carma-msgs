#
# TrailerUnitDescription.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

#    isDolly          IsDolly, -- if false this is a trailer
j2735_v2x_msgs/IsDolly is_dolly

#    width            VehicleWidth,   
j2735_v2x_msgs/VehicleWidth width

#    length           VehicleLength,  
j2735_v2x_msgs/VehicleLength length

#    height           VehicleHeight OPTIONAL,
j2735_v2x_msgs/VehicleHeight height
bool height_exists

#    mass             TrailerMass   OPTIONAL,
j2735_v2x_msgs/TrailerMass mass
bool mass_exists

#    bumperHeights    BumperHeights OPTIONAL,
j2735_v2x_msgs/BumperHeights bumper_heights
bool bumper_heights_exists

#    centerOfGravity  VehicleHeight OPTIONAL,
j2735_v2x_msgs/VehicleHeight center_of_gravity
bool center_of_gravity_exists

#    -- The front pivot point of the unit
#    frontPivot       PivotPointDescription,
j2735_v2x_msgs/PivotPointDescription front_pivot

#    -- The rear pivot point connecting to the next element, 
#    -- if present and used (implies another unit is connected)
#    rearPivot        PivotPointDescription OPTIONAL,
j2735_v2x_msgs/PivotPointDescription rear_pivot
bool rear_pivot_exists

#    -- Rear wheel pivot point center-line offset
#    -- measured from the rear of the above length
#    rearWheelOffset  Offset-B12 OPTIONAL,   
#                     -- the effective center-line of the wheel set
j2735_v2x_msgs/OffsetB12 rear_wheel_offset
bool rear_wheel_offset_exists

#    -- Current Position relative to the hauling Vehicle
#    positionOffset   Node-XY-24b, 
#    elevationOffset  VertOffset-B07 OPTIONAL,   
j2735_v2x_msgs/NodeXY24b position_offset
j2735_v2x_msgs/VertOffsetB07 elevation_offset
bool elevation_offset_exists

#    -- Past Position history relative to the hauling Vehicle
#    crumbData  	    TrailerHistoryPointList OPTIONAL, 
j2735_v2x_msgs/TrailerHistoryPointList crumb_data
bool crumb_data_exists