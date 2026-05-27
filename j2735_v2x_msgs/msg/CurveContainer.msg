#
# CurveContainer.msg
#
# J2735 2024 message format.
#

# CurveContainer ::= SEQUENCE {
#    advisorySpeed     SpeedAdvice,
#    surfaceCondition  FrictionInformation   OPTIONAL,
#    minRadius         Radius                OPTIONAL,
#    bankAngle         BankAngle             OPTIONAL,
#    curveRegion       RegionInfo            OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_SURFACE_CONDITION = 1
uint8 HAS_MIN_RADIUS = 2
uint8 HAS_BANK_ANGLE = 4
uint8 HAS_CURVE_REGION = 8

j2735_v2x_msgs/SpeedAdvice advisory_speed

j2735_v2x_msgs/FrictionInformation surface_condition

j2735_v2x_msgs/RSMRadius min_radius

j2735_v2x_msgs/BankAngle bank_angle

j2735_v2x_msgs/RegionInfo curve_region
