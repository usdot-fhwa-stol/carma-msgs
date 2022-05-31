#
# CoarseHeading.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of CoarseHeading from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#
# CoarseHeading in degrees (0..358.5) derived from 1.5 resolution data

float32 heading

# If true then heading is unavailable
bool unavailable

float32 MIN=0.0
float32 MAX=358.5
