# MapUpdateReadable.msg

# This message attempts to make carma_wm map updates readable for debugging. 
# At runtime map updates are communicated bin a binary format. This is efficient for communications 
# but makes debugging difficult. This message will show as much information about the update as is practical. 

####
# Map Bin Details
####
std_msgs/Header header# Exact header of the origin autoware_lanelet2_msgs/MapBin.msg

# version of map format. keep this as empty string if unnecessary
string format_version

# version of map version. keep this as empty string if unnecessary
string map_version

# The route filename
string route_id

# The version of current route, monotonically increasing integer starting at 1
uint32 route_version

# route flag to set the route invalidation status
bool invalidates_route

####
# Update Information
####

# Traffic Control Message Unique Id
string traffic_control_id

# Regulatory elements to update
carma_debug_ros2_msgs/LaneletIdRegulatoryElementPair[] update_list

# Regulatory elements to remove
carma_debug_ros2_msgs/LaneletIdRegulatoryElementPair[] remove_list

