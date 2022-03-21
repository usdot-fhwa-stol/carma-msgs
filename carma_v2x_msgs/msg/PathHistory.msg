#
# PathHistory.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PathHistory from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_CURR_GNSS_STATUS) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_CURR_GNSS_STATUS
uint8 presence_vector

uint8 HAS_CURR_GNSS_STATUS = 1
uint8 HAS_INITIAL_POSITION = 2


carma_v2x_msgs/PathHistoryPointList crumb_data

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the precense_vector
####
carma_v2x_msgs/FullPositionVector initial_position
j2735_v2x_msgs/GNSSStatus curr_gnss_status
