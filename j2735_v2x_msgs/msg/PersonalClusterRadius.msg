#
# PersonalClusterRadius.msg
#
# J2735 2016 message format.
#
# Parsed description of PersonalClusterRadius from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PersonalClusterRadius ::= INTEGER (0..100) -- units of meters
uint8 cluster_radius
uint8 CLUSTER_RADIUS_MAX = 100