# ManeuverPlan.msg
#
# Message defining a set of maneuvers which are meant to be executed in sequence
#

# Header
std_msgs/Header header

# The unique GUID of this maneuver plan
string  maneuver_plan_id

# The time planning for this maneuver plan began
builtin_interfaces/Time planning_start_time

# The time planning for this maneuver completed
builtin_interfaces/Time planning_completion_time

# The set of maneuvers defining this plan
carma_planning_msgs/Maneuver[] maneuvers
