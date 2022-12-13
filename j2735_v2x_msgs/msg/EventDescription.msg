#
# EventDescription.msg
#
# J2735 2016 message format.
#

# EventDescription ::= SEQUENCE {
#    typeEvent     ITIS.ITIScodes,
#                  -- A category and an item from that category 
#                  -- all ITS stds use the same types here
#                  -- to explain the type of  the 
#                  -- alert / danger / hazard involved
#    description   SEQUENCE (SIZE(1..8)) OF ITIS.ITIScodes OPTIONAL,
#                  -- Up to eight ITIS code set entries to further
#                  -- describe the event, give advice, or any 
#                  -- other ITIS codes
#    priority      Priority OPTIONAL,  
#                  -- The urgency of this message, a relative
#                  -- degree of merit compared with other 
#                  -- similar messages for this type (not other
#                  -- messages being sent by the device), nor  
#                  -- is it a priority of display urgency
#    heading       HeadingSlice  OPTIONAL,       
#                  -- Applicable headings/direction
#    extent        Extent OPTIONAL,  
#                  -- The spatial distance over which this
#                  -- message applies and should be presented to the driver
#    regional      SEQUENCE (SIZE(1..4)) OF 
#                  RegionalExtension {{REGION.Reg-EventDescription}} OPTIONAL,
#    ...
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_PRIORITY) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_PRIORITY
uint16 presence_vector

uint16 HAS_PRIORITY = 1
uint16 HAS_HEADING = 2
uint16 HAS_EXTENT = 4
uint16 HAS_DESCRIPTION = 8

j2735_v2x_msgs/ITIScodes type_event

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the presence_vector
####

j2735_v2x_msgs/Priority priority

j2735_v2x_msgs/HeadingSlice heading

j2735_v2x_msgs/Extent extent

j2735_v2x_msgs/ITIScodes[] description
uint8 DESCRIPTION_SIZE_MIN = 1
uint8 DESCRIPTION_SIZE_MAX = 8

# regional #TODO: RegionalExtensions are not yet supported for this message type