# BSMRegionalExtensions.msg

# This message includes the different BSM RegionalExtensions supported by CARMA.

# ID pertaining to the type of regional extension that is populated in this message
uint8 regional_extension_id

# Enumeration values for regional_extension_id
uint8 ROUTE_DESTINATIONS = 0

# Array of waypoints describing a vehicle's route
carma_v2x_msgs/Position3D[] route_destination_points