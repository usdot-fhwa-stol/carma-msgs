#
# SizeValue.msg
#
# J3224 2020 message format.
#

# SizeValue ::= INTEGER (0..1023) -- LSB units are 10 cm with a range of >100 meters

uint16 size_value

uint16 MIN_SIZE_VALUE = 0
uint16 MAX_SIZE_VALUE = 1023