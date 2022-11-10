#
# BSMRegionalExtension.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.


# This message includes the BSM RegionalExtensions supported by CARMA.

# ID pertaining to the type of regional extension that is populated in this message
uint16 regional_extension_id

# Enumeration values for regional_extension_id
uint16 ROUTE_DESTINATIONS = 1

# Array of waypoints describing a vehicle's route
# Note: Receiving vehicle will generate a route using these points
carma_v2x_msgs/Position3D[] route_destination_points