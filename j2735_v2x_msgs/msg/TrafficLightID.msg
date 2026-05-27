#
# TrafficLightID.msg
#
# J2735 2024 message format.
#

# TrafficLightID ::= CHOICE {
#    id  INTEGER,
#    oid OBJECT IDENTIFIER
#    }

uint8 choice
uint8 ID = 0
uint8 OID = 1

int32 id
uint8[] oid
