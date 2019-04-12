# ManeuverPlan.msg
#
# Message defining a set of maneuvers which are meant to be executed in sequence
#

# Header
std_msgs/Header header

# The unique GUID of this maneuver plan
string  maneuver_plan_id

# The set of maneuvers defining this plan
cav_msgs/Maneuver maneuvers
