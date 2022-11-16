#
# TrailerData.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerData ::= SEQUENCE {
#    notUsed SSPindex,
#    -- always set to 0 and carries no meaning;
#    -- legacy field maintained for backward compatibility
uint8 ssp_index

#    -- Offset connection point details from the 
#    -- hauling vehicle to the first trailer unit
#    connection  PivotPointDescription
carma_v2x_msgs/PivotPointDescription connection

#    -- One of more Trailer or Dolly Descriptions 
#    -- (each called a unit)
#    units       TrailerUnitDescriptionList
carma_v2x_msgs/TrailerUnitDescriptionList units