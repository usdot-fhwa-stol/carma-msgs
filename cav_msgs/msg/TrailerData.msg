#
# TrailerData.msg
#
# J2735 2024 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# TrailerData ::= SEQUENCE {
#    doNotUse SSPindex,
#    -- always set to 0 and carries no meaning;
#    -- legacy field maintained for backward compatibility

#    -- Offset connection point details from the
#    -- hauling vehicle to the first trailer unit
#    connection  PivotPointDescription
cav_msgs/PivotPointDescription connection

#    -- One of more Trailer or Dolly Descriptions
#    -- (each called a unit)
#    units       TrailerUnitDescriptionList
cav_msgs/TrailerUnitDescriptionList units