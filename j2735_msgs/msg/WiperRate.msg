#
# WiperRate.msg
#
# J2735 2016 message format.
#

# WiperRate ::= INTEGER (0..127) -- units of sweeps per minute
# The current rate at which wiper sweeps are taking place on the subject vehicle, in units of sweeps per minute. A value
# of one is used for any sweep rate with a period greater than 60 seconds.
uint8 wiper_rate

uint8 WIPER_RATE_MIN=1
uint8 WIPER_RATE_MAX=127