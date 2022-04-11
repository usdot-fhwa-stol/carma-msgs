#
# DDateTime.msg
#
# J2735 2016 message format.
#
# Parsed description of DDateTime from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#

# DDateTime ::= SEQUENCE {
#    year    DYear    OPTIONAL,    
#    month   DMonth   OPTIONAL,   
#    day     DDay     OPTIONAL,  
#    hour    DHour    OPTIONAL,   
#    minute  DMinute  OPTIONAL,  
#    second  DSecond  OPTIONAL,  
#    offset  DOffset  OPTIONAL -- time zone
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & YEAR) etc.
# Create with bitwise-or
# presence_vector = presence_vector | YEAR
uint8 presence_vector

uint8 UNSET = 0
uint8 YEAR=1
uint8 MONTH=2
uint8 DAY=4
uint8 HOUR=8
uint8 MINUTE=16
uint8 SECOND=32
uint8 OFFSET=64

j2735_v2x_msgs/DYear year

j2735_v2x_msgs/DMonth month

j2735_v2x_msgs/DDay day

j2735_v2x_msgs/DHour hour

j2735_v2x_msgs/DMinute minute

j2735_v2x_msgs/DSecond second

j2735_v2x_msgs/DOffset offset

