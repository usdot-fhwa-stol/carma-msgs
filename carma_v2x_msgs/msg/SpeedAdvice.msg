#
# SpeedAdvice.msg
#
# J2735 2024 message format — carma unit-converted.
#

# SpeedAdvice ::= INTEGER (0..500)
# Converted from 0.1 m/s LSB to m/s

float32 speed_advice

float32 MAX = 49.9
float32 UNAVAILABLE = 50.0
