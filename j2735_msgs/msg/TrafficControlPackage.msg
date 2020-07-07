#
# TrafficControlPackage.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# TrafficControlPackage ::= SEQUENCE
# {
# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
# }

# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
string label

# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
uint8[16] tcids
