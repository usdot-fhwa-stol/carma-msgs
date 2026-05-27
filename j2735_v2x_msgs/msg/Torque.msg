#
# Torque.msg
#
# J2735 2024 message format (J2945/6).
#

# Torque ::= INTEGER (0..601)
#    -- LSB units are 5 N-m
#    -- Provides a range of 0 to 3000 N-m
#    -- The value 601 indicates unavailable

uint16 UNAVAILABLE = 601

uint16 torque
