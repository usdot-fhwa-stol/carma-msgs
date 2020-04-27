#
# PathPart.msg
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

# PathPart ::= IMPLICIT SEQUENCE {
# 	id OCTET STRING (SIZE(16)),
# 	updated INTEGER (0..9223372036854775807),
# 	pathindex INTEGER (1..127),
# 	points SEQUENCE (SIZE(1..120)) OF Point
# }

# Id ::= OCTET STRING (SIZE(16))
uint8[16] id

# Updated ::= INTEGER (0..9223372036854775807)
#  -- time when this message is updated
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
uint64 updated

# Pathindex ::= INTEGER (1..127)
uint8 path_idx

uint8 PATH_IDX_UNAVAILABLE = 128
uint8 PATH_IDX_MAX = 127
uint8 PATH_IDX_MIN = 1

# Points ::= SEQUENCE (SIZE(1..120)) OF Point
cav_msgs/Point[] points

