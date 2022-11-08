#
# EventDescription.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

#    typeEvent     ITIS.ITIScodes,
#                  -- A category and an item from that category 
#                  -- all ITS stds use the same types here
#                  -- to explain the type of  the 
#                  -- alert / danger / hazard involved
j2735_v2x_msgs/ITIScodes type_event

#    description   SEQUENCE (SIZE(1..8)) OF ITIS.ITIScodes OPTIONAL,
#                  -- Up to eight ITIS code set entries to further
#                  -- describe the event, give advice, or any 
#                  -- other ITIS codes
j2735_v2x_msgs/ITIScodes[] description

#    priority      Priority OPTIONAL,  
#                  -- The urgency of this message, a relative
#                  -- degree of merit compared with other 
#                  -- similar messages for this type (not other
#                  -- messages being sent by the device), nor  
#                  -- is it a priority of display urgency
j2735_v2x_msgs/Priority priority
bool priority_exists

#    heading       HeadingSlice  OPTIONAL,       
#                  -- Applicable headings/direction
j2735_v2x_msgs/HeadingSlice heading
bool heading_exists

#    extent        Extent OPTIONAL,  
#                  -- The spatial distance over which this
#                  -- message applies and should be presented to the driver
j2735_v2x_msgs/Extent extent
bool extent_exists




