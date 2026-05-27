#
# LatOffset.msg
#
# J2735 2024 message format.
#

# LatOffset ::= INTEGER (-16384..16383)
# Offset 0.1 microdegrees (unless scale is provided)

int16 lat_offset

int16 MIN = -16384
int16 MAX = 16383
