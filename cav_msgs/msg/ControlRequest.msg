#
# ControlRequest.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# Description
# ...

# ControlRequest ::= IMPLICIT SEQUENCE {
# 	version IA5String, -- control request message version
# 	scale INTEGER (-3..3), -- vertex offset units 10^n meters
# 	bounds SEQUENCE (SIZE(1..50)) OF ControlBounds
# }

# Version ::= IA5String (SIZE(36))
string version 

# Scale ::= INTEGER (-3..3)  
#  -- vertex offset units 10^n meters 
int8 scale

# Bounds SEQUENCE (SIZE(1..50)) OF ControlBounds
cav_msgs/ControlBounds[] bounds