#
# ControlMessage.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author  Misheel Bayartsengel 
# @version 0.1
#
# CARMA Cloud generates control messages based on geocoordinates as of a certain date-timestamp. 
# CARMA Platform interprets the control messages to its own map context, which is consistent with 
# maps being used by vehicles.
# Transportation controls in the physical view and control messages in the information view convey 
# necessary information to affect human and ADS behavior: vehicle type, when a control is active, 
# area of effect, and constraints.

# Version ::= IA5String (SIZE(36))
string version 

# Id ::= OCTET STRING (SIZE(16))
uint8[16] id 

# Updated ::= INTEGER (0..9223372036854775807)
#  -- time when this message is updated
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
uint64 updated

# vTypes VehicleTypes ::= SET OF VehicleType
j2735_msgs/VType[] vtypes

# schedule Schedule
cav_msgs/Schedule schedule

# Regulatory ::= BOOLEAN
bool regulatory

# controlType ControlType ::= ENUMERATED
j2735_msgs/ControlType control_type

# controlValue ControlValue OPTIONAL ::= EXPLICIT CHOICE 
j2735_msgs/ControlValue control_value
bool control_value_exists

# PathParts ::= INTEGER (0..127)
uint8 path_parts
uint8 PATH_PART_MAX = 127

# Proj ::= IA5String (SIZE(0..255))
string proj

# Datum ::= IA5String (SIZE(0..50))
string datum

# Time 
time time

# Longitude in degrees
float64 longitude

float64 LONGITUDE_MAX = 180.0
float64 LONGITUDE_MIN = -179.9999999

# Latitude in degrees
float64 latitude

float64 LATITUDE_MAX = 90.0
float64 LATITUDE_MIN = -90.0

# Altitude in meters
#  -- In units of 0.1m steps above the sea level
#  -- Providing a range of 0 to + 9276.0 meters
#  -- The value 9276.1 shall be used when Unknown is to be sent
float32 altitude

float32 ALTITUDE_UNAVAILABLE = 9276.1
float32 ALTITUDE_MAX = 9276.0

# Heading in degrees
#  -- In units of 0.1 deg steps
#  -- A range of 0 to 359.9 degrees
float32 heading
float32 HEADING_UNAVAILABLE = 360.0
float32 HEADING_MAX = 359.9
float32 HEADING_MIN = 0

# Points ::= SEQUENCE (SIZE(2..100)) OF Point
cav_msgs/Point[] points
