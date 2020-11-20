#
# CheckActiveGeofence.msg
#
#
# 
# @version 0.1
#
# Description
# ...
 

#Check whether or not vehicle is on an active geofence
bool is_on_active_geofence


#Geofence type value
uint8 type


#Geofence type enumerated values
uint8 SPEED_LIMIT = 1

#Speed limit value
float64 value

#Distance in meters to the next geofence
 float64 distance_to_next_geofence

