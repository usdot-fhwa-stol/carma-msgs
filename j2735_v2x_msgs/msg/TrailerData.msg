#
# TrailerData.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# TrailerData ::= SEQUENCE {
#    -- CERT SSP Privilege Details
#    sspRights   SSPindex, -- index to CERT rights
uint8 ssp_index = 0

#    -- Offset connection point details from the 
#    -- hauling vehicle to the first trailer unit
#    connection  PivotPointDescription
j2735_v2x_msgs/PivotPointDescription connection

#    -- One of more Trailer or Dolly Descriptions 
#    -- (each called a unit)
#    units       TrailerUnitDescriptionList
j2735_v2x_msgs/TrailerUnitDescriptionList units