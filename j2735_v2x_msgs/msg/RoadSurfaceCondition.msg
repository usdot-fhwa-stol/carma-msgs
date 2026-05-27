#
# RoadSurfaceCondition.msg
#
# J2735 2024 message format.
#

# RoadSurfaceCondition ::= ENUMERATED { dry, wet, ... }

uint8 DRY = 0
uint8 WET = 1

uint8 road_surface_condition
