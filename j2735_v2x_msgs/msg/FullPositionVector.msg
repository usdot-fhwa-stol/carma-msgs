#
# FullPositionVector.msg
#
# J2735 2016 message format.
#
# Parsed description of FullPositionVector from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# FullPositionVector ::= SEQUENCE {
#    utcTime             DDateTime OPTIONAL,   -- time with mSec precision
#    long                Longitude,            -- 1/10th microdegree
#    lat                 Latitude,             -- 1/10th microdegree
#    elevation           Elevation  OPTIONAL,  -- units of 0.1 m
#    heading             Heading OPTIONAL, 
#    speed               TransmissionAndSpeed OPTIONAL,
#    posAccuracy         PositionalAccuracy OPTIONAL,
#    timeConfidence      TimeConfidence OPTIONAL,
#    posConfidence       PositionConfidenceSet OPTIONAL,
#    speedConfidence     SpeedandHeadingandThrottleConfidence OPTIONAL, 
#    ...  
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_HEADING) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_HEADING
uint16 presence_vector

uint16 HAS_UTC_TIME=1
uint16 HAS_ELEVATION=2
uint16 HAS_HEADING=4
uint16 HAS_SPEED=8
uint16 HAS_POS_ACCURACY=16
uint16 HAS_TIME_CONFIDENCE=32
uint16 HAS_POS_CONFIDENCE=64
uint16 HAS_SPEED_CONFIDENCE=128

j2735_v2x_msgs/DDateTime utc_time

j2735_v2x_msgs/Longitude lon

j2735_v2x_msgs/Latitude lat

j2735_v2x_msgs/Elevation elevation

j2735_v2x_msgs/Heading heading

j2735_v2x_msgs/TransmissionAndSpeed speed

j2735_v2x_msgs/PositionalAccuracy pos_accuracy

j2735_v2x_msgs/TimeConfidence time_confidence

j2735_v2x_msgs/PositionConfidenceSet pos_confidence

j2735_v2x_msgs/SpeedandHeadingandThrottleConfidence speed_confidence