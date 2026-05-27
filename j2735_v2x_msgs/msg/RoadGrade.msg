#
# RoadGrade.msg
#
# J2735 2024 message format (J2945/6).
#

# RoadGrade ::= INTEGER (-100..101)
#    -- LSB units are 0.2 percent
#    -- Provides a range of -20 to 20 percent
#    -- The value 101 indicates unavailable

int16 UNAVAILABLE = 101

int16 road_grade
