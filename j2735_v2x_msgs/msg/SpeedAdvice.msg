#
# SpeedAdvice.msg
#
# J2735 2024 message format.
#

# SpeedAdvice ::= INTEGER (0..500)
# LSB units are 0.1 m/s
# the value 499 shall be used for values at or greater than 49.9 m/s
# the value 500 shall be used to indicate that speed is unavailable

uint16 speed_advice

uint16 MAX = 499
uint16 UNAVAILABLE = 500
