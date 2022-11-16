#
# NodeXY24b.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# A 24-bit node type with offset values from the last point in X and Y.
#
# Node-XY-24b ::= SEQUENCE {
# x Offset-B12,
# y Offset-B12
# }
carma_v2x_msgs/OffsetB12 x
carma_v2x_msgs/OffsetB12 y