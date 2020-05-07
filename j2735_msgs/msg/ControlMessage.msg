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

# ControlMessage ::= IMPLICIT SEQUENCE {
# 	version IA5String,
# 	id OCTET STRING (SIZE(16)),
# 	updated INTEGER (0..9223372036854775807),
# 	vtypes SET OF VType,
# 	schedule Schedule,
# 	regulatory BOOLEAN,
# 	controltype ControlType,
# 	controlvalue ControlValue OPTIONAL,
# 	pathParts INTEGER (0..127),
# 	proj IA5String,
# 	datum IA5String,
# 	time INTEGER (0..9223372036854775807),
# 	lon INTEGER (-1800000000..1799999999),
# 	lat INTEGER (-900000000..900000000),
# 	alt INTEGER (0..92760), -- decimeters offset by -4280, which is lowest elevation at Dead Sea, max value is mount everest
# 	heading INTEGER (0..3599), -- tenths of degrees
# 	points SEQUENCE (SIZE(2..100)) OF Point
# }

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
j2735_msgs/Schedule schedule

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

# Time ::= INTEGER (0..9223372036854775807)
#  -- time the control applies to
#  -- A UNIX timestamp in milliseconds, which indicates the time elapsed since UNIX epoch
uint64 time

# Longitude ::= INTEGER (-1799999999..1800000000)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999

# Latitude ::= INTEGER (-900000000..900000000)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000

# Altitude ::= INTEGER (0..92760)
#  -- decimeters offset by -4280, which is lowest elevation at Dead Sea, max value is mount everest
#  -- In units of 10 cm steps above the sea level
#  -- Providing a range of 0 to + 9276.0 meters
#  -- The value 92761 shall be used when Unknown is to be sent
#  -- Convert to meter with factor 0.1 when field is used
uint32 altitude

uint32 ALTITUDE_MAX = 92760

# Heading ::= INTEGER (0..3599)
#  -- tenths of degrees
#  -- LSB of 0.1 degrees
#  -- A range of 0 to 359.9 degrees
#  -- Convert to degree with factor 0.1 when field is used
uint16 heading
uint16 HEADING_MAX = 3599
uint16 HEADING_MIN = 0

# Points ::= SEQUENCE (SIZE(2..100)) OF Point
j2735_msgs/Point[] points
