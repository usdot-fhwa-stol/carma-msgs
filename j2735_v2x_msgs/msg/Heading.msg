#
# Heading.msg
#
# J2735 2016 message format.
#
# Parsed description of Heading from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# Heading ::= INTEGER (0..28800)
#  -- LSB of 0.0125 degrees
#  -- A range of 0 to 359.9875 degrees
#  -- Convert to degree with factor 0.0125 when field is used
uint16 heading

uint16 HEADING_UNAVAILABLE = 28800
uint16 HEADING_MAX = 28798
uint16 HEADING_MIN = 0