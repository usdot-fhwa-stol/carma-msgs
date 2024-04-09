#
# ObjectID.msg
#
# J3224 2020 message format.
#

# ObjectID ::= INTEGER (0..65535)

uint16 object_id

uint16 MIN_OBJECT_ID = 0
uint16 MAX_OBJECT_ID = 65535