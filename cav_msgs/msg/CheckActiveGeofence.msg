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
uint8 LANE_CLOSED = 0
uint8 SPEED_LIMIT = 1


# Reason of boradcasting active Geofence
uint8 reason


# enumeration type for reason of boradcasting active Geofence
uint8 EMERGENCY_VEHICLE = 0

#Speed limit value
float64 value

#Distance in meters to the next geofence
 float64 distance_to_next_geofence

# Road vehicles minimum following distance (meters) within geofence
float64 minimum_gap

# Recommended speed within geofence (MPH). This is max_speed allowed within an active Geofence
float64 advisory_speed