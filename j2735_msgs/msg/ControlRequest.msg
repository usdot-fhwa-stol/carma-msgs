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
# 	bounds SEQUENCE (SIZE(1..50)) OF ControlBounds
# }

# Version ::= IA5String (SIZE(36))
string version 

# Bounds SEQUENCE (SIZE(1..50)) OF ControlBounds
j2735_msgs/ControlBounds[] bounds