#
# Route Message
# 
# This contains lanelet IDs of the route and the shortest path in the route
#
# @author Shuwei Qiang
# @version 0.1
#

# Timestamp and frame_id of the map
Header header

# The route filename
string route_id

# The version of current route, monotonically increasing integer starting at 1
uint32 route_version

# Route name, for display purpose
string route_name

# LaneLet IDs of the route shortest path
int64[] shortest_path_lanelet_ids

# LaneLet IDs of the whole route, including all lanelets in the shortest path
int64[] route_path_lanelet_ids

