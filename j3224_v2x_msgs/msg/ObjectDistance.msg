#
# ObjectDistance.msg
#
# J3224 2020 message format.
#

# ObjectDistance ::=INTEGER(-32767..32767) --LSB units of 0.1 meters

int16 object_distance

int16 MIN_OBJECT_DISTANCE = -32767
int16 MAX_OBJECT_DISTANCE = 32767