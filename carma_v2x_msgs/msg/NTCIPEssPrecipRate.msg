#
# NTCIPEssPrecipRate.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# EssPrecipRate in grams per square meter per second in range [0..6553.5] grams per square meter per second
float32 precip_rate

# If true there is an error condition or a missing value for EssPrecipRate
bool unavailable