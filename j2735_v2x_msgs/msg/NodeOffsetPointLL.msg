#
# NodeOffsetPointLL.msg
#
# J2735 2024 message format.
#

# NodeOffsetPointLL ::= CHOICE {
#    node-LL1         Node-LL-24B,
#    node-LL2         Node-LL-28B,
#    node-LL3         Node-LL-32B,
#    node-LL4         Node-LL-36B,
#    node-LL5         Node-LL-44B,
#    node-LL6         Node-LL-48B,
#    node-LatLon      Node-LLmD-64b,
#    regional         RegionalExtension
#    }

uint8 choice

uint8 NODE_LL1 = 0
uint8 NODE_LL2 = 1
uint8 NODE_LL3 = 2
uint8 NODE_LL4 = 3
uint8 NODE_LL5 = 4
uint8 NODE_LL6 = 5
uint8 NODE_LAT_LON = 6
uint8 REGIONAL = 7

j2735_v2x_msgs/NodeLL24B node_ll1

j2735_v2x_msgs/NodeLL28B node_ll2

j2735_v2x_msgs/NodeLL32B node_ll3

j2735_v2x_msgs/NodeLL36B node_ll4

j2735_v2x_msgs/NodeLL44B node_ll5

j2735_v2x_msgs/NodeLL48B node_ll6

j2735_v2x_msgs/NodeLLmD64b node_lat_lon

j2735_v2x_msgs/RegionalExtension regional
