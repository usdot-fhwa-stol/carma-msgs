#
# LongOffset.msg
#
# J2735 2024 message format.
#

# LongOffset ::= INTEGER (-16384..16383)
# Offset 0.1 microdegrees (unless scale is provided)

int16 long_offset

int16 MIN = -16384
int16 MAX = 16383
