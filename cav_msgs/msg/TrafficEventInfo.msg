#
# TrafficEventInfo.msg
#
# Message Format for UI's Traffic Incident Event Information
#
#
# @version 0.1
#

# enumeration type for reason of Event
uint8 EMERGENCY_VEHICLE = 0

# enumeration type for type of Event
uint8 LANE_CLOSED = 0


# Road vehicles minimum following distance (meters)
float64 event_minimum_gap

# Recommended speed within geofence (MPH)
float64 event_advisory_speed

# Type of Event
uint8 event_type

# Reason of Event
uint8 event_reason




