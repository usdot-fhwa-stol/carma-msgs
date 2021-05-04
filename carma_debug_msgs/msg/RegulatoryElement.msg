# RegulatoryElement.msg

# This is a debug message which contains all the fields of the various Lanelet2 Regulatory Element's used by carma_wm

string rule_name

# Pariticpant list if applicable
string[] participants

bool unsupported_type

##
# digital_minimum_gap
##
float64 min_gap
# Uses participants
# Uses refers_ids

## 
# digital_speed_limit
##
float64 speed_limit
# Uses participants
# Uses refers_ids

##
# direction_of_travel
##
string direction
# Uses participants
# Uses refers_ids

##
# passing_control_line
##
# First value is the participant type, second value is the passing direction for that participant
string[] left_participants
string[] right_participants
# Uses reference_line_ids

##
# region_access_rule
##
string reason
# Uses participants

##
# stop_rule
##
# Uses participants

