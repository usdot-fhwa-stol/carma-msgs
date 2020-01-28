#
# RouteEvent.msg
# 
# Enum denoting an event which has just occurred on the route
#
# @author Shuwei Qiang
# @version 0.1
#

# standard ROS header
Header header

uint8 event

uint8 LOAD_ROUTE_FILES=0
uint8 ROUTE_SELECTED=1
uint8 ROUTE_STARTED=2
uint8 ROUTE_COMPLETED=3
uint8 LEFT_ROUTE=4
uint8 ROUTE_ABORTED=5
uint8 ROUTING_FAILURE=6
