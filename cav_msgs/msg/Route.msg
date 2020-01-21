# This contains lanelet IDs of the route and the shortest path in the route

# Timestamp and frame_id of the map
Header header

# The route id
string route_id

# The version of current route
int32 route_version

# Route name
string route_name

# LaneLet IDs of the route shortest path
int32[] shortest_path_lanelet_ids

# LaneLet IDs of the whole route, including all lanelets in the shortest path
int32[] route_path_lanelet_ids

