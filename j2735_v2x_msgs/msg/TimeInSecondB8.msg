#
# TimeInSecondB8.msg
#
# J2735 2024 message format.
#

# TimeInSecond-B8 ::= INTEGER (0..255)
#    -- 255 means invalid value

uint8 INVALID = 255

uint8 time_in_second
