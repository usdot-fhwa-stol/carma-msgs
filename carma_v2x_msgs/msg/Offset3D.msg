#
# Offset3D.msg
#
# J2735 2024 message format — carma unit-converted.
#

# Offset3D ::= SEQUENCE {
#    lat-offset      LatOffset,    -- converted from 0.1 microdegrees to degrees
#    long-offset     LongOffset,   -- converted from 0.1 microdegrees to degrees
#    elev-offset     ElevOffset    OPTIONAL  -- converted from 0.1 m to meters
#    }

uint8 presence_vector

uint8 HAS_ELEV_OFFSET = 1

float64 lat_offset

float64 long_offset

float32 elev_offset
