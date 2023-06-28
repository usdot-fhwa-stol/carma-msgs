#
# PitchRate.msg
#
# J3224 2020 message format.
#

# PitchRate ::= INTEGER (-32767..32767)
#   -- LSB units of 0.01 degrees per second (signed)
#   -- unavailable (32767)

int16 pitch_rate 

int16 MIN_PITCH_RATE = -32767
int16 MAX_PITCH_RATE = 32766
int16 UNAVAILABLE = 32767
